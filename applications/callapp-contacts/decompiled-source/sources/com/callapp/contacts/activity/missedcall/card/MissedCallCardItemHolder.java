package com.callapp.contacts.activity.missedcall.card;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.bumptech.glide.e.a.j;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.engine.GlideException;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.missedcall.MissedCallFrequentManager;
import com.callapp.contacts.activity.missedcall.MissedCallMoreManager;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.FourEventsIconsViewGroup;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.common.collect.av;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder.class */
public class MissedCallCardItemHolder extends BaseCallAppViewHolder implements MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener {
    private FrameLayout A;
    private OnDeleteClickListener B;
    private CardView C;
    private MissedCallCardDataItem D;
    private LinearLayout E;
    private final ImageView s;
    private TextView t;
    private TextView u;
    private TextView v;
    private ProfilePictureView w;
    private FourEventsIconsViewGroup x;
    private TextView y;
    private ImageView z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener.class */
    public interface OnDeleteClickListener {
        void a(MissedCallCardItemHolder missedCallCardItemHolder, CallReminderFrequentData.FrequentType frequentType, int i);
    }

    public MissedCallCardItemHolder(View view, OnDeleteClickListener onDeleteClickListener) {
        super(view);
        this.C = (CardView) view.findViewById(2131362282);
        this.E = (LinearLayout) view.findViewById(2131362521);
        this.t = (TextView) view.findViewById(2131363287);
        this.v = (TextView) view.findViewById(2131363289);
        this.u = (TextView) view.findViewById(2131363288);
        this.w = (ProfilePictureView) view.findViewById(2131363565);
        this.x = (FourEventsIconsViewGroup) view.findViewById(2131362865);
        this.y = (TextView) view.findViewById(2131363290);
        this.z = (ImageView) view.findViewById(2131363291);
        this.A = (FrameLayout) view.findViewById(2131363310);
        ImageView imageView = (ImageView) view.findViewById(2131363416);
        this.s = imageView;
        this.B = onDeleteClickListener;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (Activities.getScreenWidth(1) * 0.8d), (int) CallAppApplication.get().getResources().getDimension(2131165776));
        layoutParams.setMargins(this.C.getResources().getDimensionPixelOffset(2131165549), this.C.getResources().getDimensionPixelOffset(2131165549), this.C.getResources().getDimensionPixelOffset(2131165562), this.C.getResources().getDimensionPixelOffset(2131165549));
        this.C.setLayoutParams(layoutParams);
        this.C.requestLayout();
        if (ThemeUtils.isThemeLight()) {
            this.C.setCardBackgroundColor(ThemeUtils.getColor(2131100228));
            this.t.setTextColor(ThemeUtils.getColor(2131099918));
            imageView.setColorFilter(ThemeUtils.getColor(2131099692));
        } else {
            this.C.setCardBackgroundColor(ThemeUtils.getColor(2131099918));
            this.t.setTextColor(ThemeUtils.getColor(2131100228));
            imageView.setColorFilter(ThemeUtils.getColor(2131100228));
        }
        CardView cardView = this.C;
        cardView.setRadius(cardView.getResources().getDimensionPixelOffset(2131165583));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MissedCallCardDataItem missedCallCardDataItem, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a(this.z.getContext(), missedCallCardDataItem.getPhone(), (BaseAdapterItemData) missedCallCardDataItem, false, contactItemViewEvents);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(final MissedCallCardDataItem missedCallCardDataItem, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.a(view, 1);
        if (missedCallCardDataItem.getMissedCallType() == 3) {
            AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickCallButton");
        } else if (missedCallCardDataItem.getMissedCallType() == 40) {
            AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ClickCallButton");
        }
        if (OptInWithTopImagePopup.b()) {
            OptInWithTopImagePopup.b(this.z.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardItemHolder$xTnF8RZjhGHYOwVPPkX3uWBiMhc
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    MissedCallCardItemHolder.this.b(missedCallCardDataItem, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardItemHolder$AVOwXnpbOp1waStZ9gszooj3Hd8
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    MissedCallCardItemHolder.this.a(missedCallCardDataItem, contactItemViewEvents, activity);
                }
            });
            return true;
        }
        ListsUtils.a(this.z.getContext(), missedCallCardDataItem.getPhone(), (BaseAdapterItemData) missedCallCardDataItem, true, contactItemViewEvents);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MissedCallCardDataItem missedCallCardDataItem, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a(this.z.getContext(), missedCallCardDataItem.getPhone(), (BaseAdapterItemData) missedCallCardDataItem, true, contactItemViewEvents);
    }

    public final void a(final MissedCallCardDataItem missedCallCardDataItem, final ContactItemViewEvents contactItemViewEvents) {
        this.D = missedCallCardDataItem;
        int missedCallNumber = missedCallCardDataItem.getMissedCallNumber();
        this.t.setText(StringUtils.j(missedCallCardDataItem.getName()));
        int indexOfChild = this.E.indexOfChild(this.t);
        int indexOfChild2 = this.E.indexOfChild(this.u);
        if (missedCallCardDataItem.getMissedCallType() == 3) {
            this.u.setText(Activities.a(2131887198, String.valueOf(missedCallNumber)));
            this.y.setText(Activities.getString(2131887193));
            this.C.setCardBackgroundColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131100228 : 2131099918));
            if (indexOfChild < indexOfChild2) {
                this.E.removeView(this.t);
                this.E.addView(this.t, indexOfChild2);
            }
        } else if (missedCallCardDataItem.getMissedCallType() == 40) {
            if (missedCallNumber == 1) {
                this.u.setText(Activities.getString(2131886771));
            } else {
                this.u.setText(Activities.a(2131886769, String.valueOf(missedCallNumber)));
            }
            this.y.setText(Activities.getString(2131886377));
            this.C.setCardBackgroundColor(ThemeUtils.getColor(2131099756));
            if (indexOfChild2 < indexOfChild) {
                this.E.removeView(this.u);
                this.E.addView(this.u, indexOfChild);
            }
        }
        ArrayList arrayList = new ArrayList();
        if (missedCallCardDataItem.getMissedCallType() == 3) {
            for (int i = 0; i < missedCallNumber; i++) {
                arrayList.add(3);
            }
        } else if (missedCallCardDataItem.getMissedCallType() == 40) {
            for (int i2 = 0; i2 < missedCallNumber; i2++) {
                arrayList.add(40);
            }
        }
        CallLogUtils.a(arrayList, this.x);
        this.v.setText(CallLogUtils.b(new Date(missedCallCardDataItem.getLastMissedCallDate()), CallLogUtils.a(missedCallCardDataItem.getLastMissedCallDate())));
        ProfilePictureView profilePictureView = this.w;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(missedCallCardDataItem.getProfileImageView());
        glideRequestBuilder.l = true;
        glideRequestBuilder.n = new g() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.1
            @Override // com.bumptech.glide.e.g
            public final boolean a(GlideException glideException, Object obj, j jVar, boolean z) {
                CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MissedCallCardItemHolder.this.w.a();
                    }
                });
                return false;
            }

            @Override // com.bumptech.glide.e.g
            public final boolean a(Object obj, Object obj2, j jVar, a aVar, boolean z) {
                return false;
            }
        };
        profilePictureView.a(glideRequestBuilder);
        String j = StringUtils.j(missedCallCardDataItem.getName());
        if (StringUtils.a((CharSequence) j)) {
            this.w.setText("?");
        } else {
            this.w.setText(StringUtils.r(j));
        }
        this.y.setTextColor(ThemeUtils.getColor(2131099784));
        this.z.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.4
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                AndroidUtils.a(view, 1);
                Context context = MissedCallCardItemHolder.this.z.getContext();
                Phone phone = missedCallCardDataItem.getPhone();
                MissedCallCardDataItem missedCallCardDataItem2 = missedCallCardDataItem;
                ListsUtils.a(context, phone, missedCallCardDataItem2, ContactUtils.a(missedCallCardDataItem2.getPhone(), missedCallCardDataItem.getContactId()), contactItemViewEvents);
                if (missedCallCardDataItem.getMissedCallType() == 3) {
                    AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickCallButton");
                } else if (missedCallCardDataItem.getMissedCallType() == 40) {
                    AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ClickCallButton");
                }
            }
        });
        this.z.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardItemHolder$xDRcfFTEO1O0FR7HNuA4MgpJFaE
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean a2;
                a2 = MissedCallCardItemHolder.this.a(missedCallCardDataItem, contactItemViewEvents, view);
                return a2;
            }
        });
        this.A.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z = true;
                List<CallReminderFrequentData> a2 = MissedCallFrequentManager.a(missedCallCardDataItem.getPhone(), av.a(Integer.valueOf(missedCallCardDataItem.getMissedCallType())));
                if (!CollectionUtils.b(a2) || !a2.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.SHOW_LESS)) {
                    z = false;
                }
                new MissedCallMoreManager().a(MissedCallCardItemHolder.this.s.getContext(), MissedCallCardItemHolder.this.s, MissedCallCardItemHolder.this, z);
                if (missedCallCardDataItem.getMissedCallType() == 3) {
                    AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickMoreOptions");
                } else if (missedCallCardDataItem.getMissedCallType() == 40) {
                    AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ClickMoreOptions");
                }
            }
        });
        final DataChangedInfo create = DataChangedInfo.create(EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), DataChangedInfo.POSITION_ALL, 1);
        this.C.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (missedCallCardDataItem.getMissedCallType() == 3) {
                    AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickCard");
                } else if (missedCallCardDataItem.getMissedCallType() == 40) {
                    AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ClickCard");
                }
                ListsUtils.a(view.getContext(), missedCallCardDataItem, "missed call", create, ENTRYPOINT.MISSED_CALL_NOT_ANSWERED);
            }
        });
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onDeleteClick() {
        OnDeleteClickListener onDeleteClickListener = this.B;
        if (!(onDeleteClickListener == null || this.D == null)) {
            onDeleteClickListener.a(this, CallReminderFrequentData.FrequentType.DELETE, this.D.getMissedCallType());
        }
        if (this.D.getMissedCallType() == 3) {
            AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickMoreOptions", "Delete");
        } else if (this.D.getMissedCallType() == 40) {
            AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ClickMoreOptions", "Delete");
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onDontShowClick() {
        OnDeleteClickListener onDeleteClickListener = this.B;
        if (onDeleteClickListener != null) {
            onDeleteClickListener.a(this, CallReminderFrequentData.FrequentType.DONT_SHOW, this.D.getMissedCallType());
        }
        if (this.D.getMissedCallType() == 3) {
            AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickMoreOptions", "DontShow");
        } else if (this.D.getMissedCallType() == 40) {
            AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ClickMoreOptions", "DontShow");
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onShowLessClick() {
        OnDeleteClickListener onDeleteClickListener = this.B;
        if (onDeleteClickListener != null) {
            onDeleteClickListener.a(this, CallReminderFrequentData.FrequentType.SHOW_LESS, this.D.getMissedCallType());
        }
        if (this.D.getMissedCallType() == 3) {
            AnalyticsManager.get().a(Constants.MISSED_CALL_CATEGORY, "ClickMoreOptions", "ShowLess");
        } else if (this.D.getMissedCallType() == 40) {
            AnalyticsManager.get().a(Constants.NOT_ANSWER_CATEGORY, "ClickMoreOptions", "ShowLess");
        }
    }
}
