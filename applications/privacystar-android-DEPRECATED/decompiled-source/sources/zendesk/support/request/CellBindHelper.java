package zendesk.support.request;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.view.animation.PathInterpolatorCompat;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.squareup.picasso.Picasso;
import com.zendesk.sdk.C1790R;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import zendesk.belvedere.Belvedere;
import zendesk.suas.Dispatcher;
import zendesk.support.request.CellType;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellBindHelper.class */
class CellBindHelper {
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("d MMMM yyyy", Locale.getDefault());

    /* renamed from: af */
    private final ActionFactory f1869af;
    private final CellAttachmentLoadingUtil attachmentUtil;
    private final Context context;
    private final Dispatcher dispatcher;
    private final String today;
    private final String yesterday;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellBindHelper(Context context, Picasso picasso, ActionFactory actionFactory, Dispatcher dispatcher) {
        this.context = context;
        this.f1869af = actionFactory;
        this.dispatcher = dispatcher;
        this.attachmentUtil = new CellAttachmentLoadingUtil(picasso, context);
        this.today = context.getString(C1790R.string.request_message_date_today);
        this.yesterday = context.getString(C1790R.string.request_message_date_yesterday);
    }

    private boolean basicCellChecks(CellType.Base base, CellType.Base base2) {
        if (base == base2) {
            return true;
        }
        return base.getPositionType() == base2.getPositionType() && base.getClass().isInstance(base2);
    }

    private int getPixelForDp(int i) {
        return i != 0 ? this.context.getResources().getDimensionPixelOffset(i) : 0;
    }

    private boolean nullSafeEquals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAttachment(Context context, StateRequestAttachment stateRequestAttachment) {
        Intent viewIntent = Belvedere.from(context).getViewIntent(stateRequestAttachment.getParsedLocalUri(), stateRequestAttachment.getMimeType());
        if (context.getPackageManager().queryIntentActivities(viewIntent, 0).size() > 0) {
            context.startActivity(viewIntent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addOnClickListenerForFileAttachment(View view, final StateRequestAttachment stateRequestAttachment) {
        if (stateRequestAttachment.isAvailableLocally()) {
            view.setAlpha(1.0f);
            view.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.CellBindHelper.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CellBindHelper.this.openAttachment(view2.getContext(), stateRequestAttachment);
                }
            });
            return;
        }
        view.setAlpha(this.context.getResources().getInteger(C1790R.integer.zs_request_file_attachment_downloading_cell_alpha) / 100.0f);
        view.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.CellBindHelper.2
            private final String toastMessage;

            {
                this.toastMessage = CellBindHelper.this.context.getString(C1790R.string.request_file_attachment_download_in_progress);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Toast.makeText(view2.getContext(), this.toastMessage, 0).show();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addOnClickListenerForImageAttachment(View view, final StateRequestAttachment stateRequestAttachment) {
        if (stateRequestAttachment.isAvailableLocally()) {
            view.setOnClickListener(new View.OnClickListener() { // from class: zendesk.support.request.CellBindHelper.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CellBindHelper.this.openAttachment(view2.getContext(), stateRequestAttachment);
                }
            });
        } else {
            view.setOnClickListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean areAgentCellContentsTheSame(CellType.Agent agent, CellType.Base base) {
        if (!basicCellChecks(agent, base) || !(base instanceof CellType.Agent)) {
            return false;
        }
        CellType.Agent agent2 = (CellType.Agent) base;
        boolean z = agent.getAgent().getId() == agent2.getAgent().getId();
        boolean equals = agent.getAgent().getName().equals(agent2.getAgent().getName());
        boolean z2 = agent.isAgentNameVisible() == agent2.isAgentNameVisible();
        boolean z3 = false;
        if (z) {
            z3 = false;
            if (equals) {
                z3 = false;
                if (z2) {
                    z3 = true;
                }
            }
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean areAttachmentCellContentsTheSame(CellType.Attachment attachment, CellType.Base base) {
        if (!basicCellChecks(attachment, base) || !(base instanceof CellType.Attachment)) {
            return false;
        }
        StateRequestAttachment attachment2 = attachment.getAttachment();
        StateRequestAttachment attachment3 = ((CellType.Attachment) base).getAttachment();
        boolean nullSafeEquals = nullSafeEquals(attachment2.getLocalFile(), attachment3.getLocalFile());
        boolean nullSafeEquals2 = nullSafeEquals(attachment2.getLocalUri(), attachment3.getLocalUri());
        boolean nullSafeEquals3 = nullSafeEquals(attachment2.getUrl(), attachment3.getUrl());
        boolean z = false;
        if (nullSafeEquals) {
            z = false;
            if (nullSafeEquals2) {
                z = false;
                if (nullSafeEquals3) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean areMessageContentsTheSame(CellType.Message message, CellType.Base base) {
        if (basicCellChecks(message, base) && (base instanceof CellType.Message)) {
            return message.getMessage().equals(((CellType.Message) base).getMessage());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean areStatefulCellContentsTheSame(CellType.Stateful stateful, CellType.Base base) {
        if (!basicCellChecks(stateful, base) || !(base instanceof CellType.Stateful)) {
            return false;
        }
        CellType.Stateful stateful2 = (CellType.Stateful) base;
        boolean z = stateful.isErrorShown() == stateful2.isErrorShown();
        boolean z2 = stateful.isMarkedAsDelivered() == stateful2.isMarkedAsDelivered();
        boolean z3 = stateful.getErrorGroupMessages().size() == stateful2.getErrorGroupMessages().size();
        boolean z4 = stateful.isLastErrorCellOfBlock() == stateful2.isLastErrorCellOfBlock();
        boolean z5 = false;
        if (z) {
            z5 = false;
            if (z2) {
                z5 = false;
                if (z3) {
                    z5 = false;
                    if (z4) {
                        z5 = true;
                    }
                }
            }
        }
        return z5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindAgentName(TextView textView, boolean z, StateRequestUser stateRequestUser) {
        if (z) {
            textView.setVisibility(0);
            textView.setText(stateRequestUser.getName());
            return;
        }
        textView.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindAppInfo(ResolveInfo resolveInfo, TextView textView, ImageView imageView) {
        textView.setText(UtilsAttachment.getAppName(this.context, resolveInfo));
        imageView.setImageDrawable(UtilsAttachment.getAppIcon(this.context, resolveInfo));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindDate(TextView textView, Date date) {
        textView.setText((UtilsDate.isToday(date) ? this.today : UtilsDate.isYesterday(date) ? this.yesterday : DATE_FORMAT.format(date)).toUpperCase(Locale.getDefault()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindImage(ImageView imageView, StateRequestAttachment stateRequestAttachment) {
        this.attachmentUtil.bindImage(imageView, stateRequestAttachment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindStatusLabel(TextView textView, boolean z, boolean z2) {
        int i;
        int i2 = -1;
        int i3 = 0;
        if (z) {
            i2 = C1790R.color.zs_request_cell_label_color_error;
            i = C1790R.string.request_messages_status_error;
        } else if (z2) {
            i2 = C1790R.color.zs_request_cell_label_color;
            i = C1790R.string.request_message_status_delivered;
        } else {
            i3 = 4;
            i = -1;
        }
        if (i2 > 0) {
            textView.setTextColor(ContextCompat.getColor(this.context, i2));
        }
        if (i > 0) {
            textView.setText(i);
        }
        textView.clearAnimation();
        if (i3 == 0 && i3 != textView.getVisibility()) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(250L);
            alphaAnimation.setInterpolator(PathInterpolatorCompat.create(0.0f, 0.0f, 0.2f, 1.0f));
            textView.startAnimation(alphaAnimation);
        }
        textView.setVisibility(i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int colorForError(boolean z) {
        return ContextCompat.getColor(this.context, z ? C1790R.color.zs_request_user_background_color_error : C1790R.color.zs_request_user_background_color);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int colorForErrorImage(boolean z) {
        if (z) {
            return ContextCompat.getColor(this.context, C1790R.color.zs_request_user_background_image_color_error);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View.OnClickListener errorClickListener(boolean z, final List<StateMessage> list) {
        if (z) {
            return new View.OnClickListener() { // from class: zendesk.support.request.CellBindHelper.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CellBindHelper.this.dispatcher.dispatch(CellBindHelper.this.f1869af.showRetryDialog(list));
                }
            };
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ResolveInfo getAppInfo(String str) {
        return UtilsAttachment.getAppInfoForFile(this.context, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rect getInsets(int i, int i2, int i3, int i4) {
        return new Rect(getPixelForDp(i), getPixelForDp(i2), getPixelForDp(i3), getPixelForDp(i4));
    }
}
