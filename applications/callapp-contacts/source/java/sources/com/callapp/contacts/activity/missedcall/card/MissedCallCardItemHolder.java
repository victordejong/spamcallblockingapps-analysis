package com.callapp.contacts.activity.missedcall.card;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
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
import com.google.common.collect.C15484av;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder.class */
public class MissedCallCardItemHolder extends BaseCallAppViewHolder implements MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener {

    /* renamed from: A */
    private FrameLayout f23885A;

    /* renamed from: B */
    private OnDeleteClickListener f23886B;

    /* renamed from: C */
    private CardView f23887C;

    /* renamed from: D */
    private MissedCallCardDataItem f23888D;

    /* renamed from: E */
    private LinearLayout f23889E;

    /* renamed from: s */
    private final ImageView f23890s;

    /* renamed from: t */
    private TextView f23891t;

    /* renamed from: u */
    private TextView f23892u;

    /* renamed from: v */
    private TextView f23893v;

    /* renamed from: w */
    private ProfilePictureView f23894w;

    /* renamed from: x */
    private FourEventsIconsViewGroup f23895x;

    /* renamed from: y */
    private TextView f23896y;

    /* renamed from: z */
    private ImageView f23897z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallCardItemHolder$OnDeleteClickListener.class */
    public interface OnDeleteClickListener {
        /* renamed from: a */
        void mo29782a(MissedCallCardItemHolder missedCallCardItemHolder, CallReminderFrequentData.FrequentType frequentType, int i);
    }

    public MissedCallCardItemHolder(View view, OnDeleteClickListener onDeleteClickListener) {
        super(view);
        this.f23887C = (CardView) view.findViewById(2131362282);
        this.f23889E = (LinearLayout) view.findViewById(2131362521);
        this.f23891t = (TextView) view.findViewById(2131363287);
        this.f23893v = (TextView) view.findViewById(2131363289);
        this.f23892u = (TextView) view.findViewById(2131363288);
        this.f23894w = (ProfilePictureView) view.findViewById(2131363565);
        this.f23895x = (FourEventsIconsViewGroup) view.findViewById(2131362865);
        this.f23896y = (TextView) view.findViewById(2131363290);
        this.f23897z = (ImageView) view.findViewById(2131363291);
        this.f23885A = (FrameLayout) view.findViewById(2131363310);
        ImageView imageView = (ImageView) view.findViewById(2131363416);
        this.f23890s = imageView;
        this.f23886B = onDeleteClickListener;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (Activities.getScreenWidth(1) * 0.8d), (int) CallAppApplication.get().getResources().getDimension(2131165776));
        layoutParams.setMargins(this.f23887C.getResources().getDimensionPixelOffset(2131165549), this.f23887C.getResources().getDimensionPixelOffset(2131165549), this.f23887C.getResources().getDimensionPixelOffset(2131165562), this.f23887C.getResources().getDimensionPixelOffset(2131165549));
        this.f23887C.setLayoutParams(layoutParams);
        this.f23887C.requestLayout();
        if (ThemeUtils.isThemeLight()) {
            this.f23887C.setCardBackgroundColor(ThemeUtils.getColor(2131100228));
            this.f23891t.setTextColor(ThemeUtils.getColor(2131099918));
            imageView.setColorFilter(ThemeUtils.getColor(2131099692));
        } else {
            this.f23887C.setCardBackgroundColor(ThemeUtils.getColor(2131099918));
            this.f23891t.setTextColor(ThemeUtils.getColor(2131100228));
            imageView.setColorFilter(ThemeUtils.getColor(2131100228));
        }
        CardView cardView = this.f23887C;
        cardView.setRadius(cardView.getResources().getDimensionPixelOffset(2131165583));
    }

    /* renamed from: a */
    public /* synthetic */ void m29804a(MissedCallCardDataItem missedCallCardDataItem, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f23897z.getContext(), missedCallCardDataItem.getPhone(), (BaseAdapterItemData) missedCallCardDataItem, false, contactItemViewEvents);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m29803a(final MissedCallCardDataItem missedCallCardDataItem, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.m27630a(view, 1);
        if (missedCallCardDataItem.getMissedCallType() == 3) {
            AnalyticsManager.get().m28450a(Constants.MISSED_CALL_CATEGORY, "ClickCallButton");
        } else if (missedCallCardDataItem.getMissedCallType() == 40) {
            AnalyticsManager.get().m28450a(Constants.NOT_ANSWER_CATEGORY, "ClickCallButton");
        }
        if (OptInWithTopImagePopup.m28052b()) {
            OptInWithTopImagePopup.m28051b(this.f23897z.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardItemHolder$xTnF8RZjhGHYOwVPPkX3uWBiMhc
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    MissedCallCardItemHolder.this.m29801b(missedCallCardDataItem, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardItemHolder$AVOwXnpbOp1waStZ9gszooj3Hd8
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    MissedCallCardItemHolder.this.m29804a(missedCallCardDataItem, contactItemViewEvents, activity);
                }
            });
            return true;
        }
        ListsUtils.m27481a(this.f23897z.getContext(), missedCallCardDataItem.getPhone(), (BaseAdapterItemData) missedCallCardDataItem, true, contactItemViewEvents);
        return true;
    }

    /* renamed from: b */
    public /* synthetic */ void m29801b(MissedCallCardDataItem missedCallCardDataItem, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f23897z.getContext(), missedCallCardDataItem.getPhone(), (BaseAdapterItemData) missedCallCardDataItem, true, contactItemViewEvents);
    }

    /* renamed from: a */
    public final void m29805a(final MissedCallCardDataItem missedCallCardDataItem, final ContactItemViewEvents contactItemViewEvents) {
        this.f23888D = missedCallCardDataItem;
        int missedCallNumber = missedCallCardDataItem.getMissedCallNumber();
        this.f23891t.setText(StringUtils.m26020j(missedCallCardDataItem.getName()));
        int indexOfChild = this.f23889E.indexOfChild(this.f23891t);
        int indexOfChild2 = this.f23889E.indexOfChild(this.f23892u);
        if (missedCallCardDataItem.getMissedCallType() == 3) {
            this.f23892u.setText(Activities.m27697a(2131887198, String.valueOf(missedCallNumber)));
            this.f23896y.setText(Activities.getString(2131887193));
            this.f23887C.setCardBackgroundColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131100228 : 2131099918));
            if (indexOfChild < indexOfChild2) {
                this.f23889E.removeView(this.f23891t);
                this.f23889E.addView(this.f23891t, indexOfChild2);
            }
        } else if (missedCallCardDataItem.getMissedCallType() == 40) {
            if (missedCallNumber == 1) {
                this.f23892u.setText(Activities.getString(2131886771));
            } else {
                this.f23892u.setText(Activities.m27697a(2131886769, String.valueOf(missedCallNumber)));
            }
            this.f23896y.setText(Activities.getString(2131886377));
            this.f23887C.setCardBackgroundColor(ThemeUtils.getColor(2131099756));
            if (indexOfChild2 < indexOfChild) {
                this.f23889E.removeView(this.f23892u);
                this.f23889E.addView(this.f23892u, indexOfChild);
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
        CallLogUtils.m27564a(arrayList, this.f23895x);
        this.f23893v.setText(CallLogUtils.m27553b(new Date(missedCallCardDataItem.getLastMissedCallDate()), CallLogUtils.m27579a(missedCallCardDataItem.getLastMissedCallDate())));
        ProfilePictureView profilePictureView = this.f23894w;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(missedCallCardDataItem.getProfileImageView());
        glideRequestBuilder.f28246l = true;
        glideRequestBuilder.f28248n = new AbstractC3604g() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.1
            @Override // com.bumptech.glide.p112e.AbstractC3604g
            /* renamed from: a */
            public final boolean mo26384a(GlideException glideException, Object obj, AbstractC3585j abstractC3585j, boolean z) {
                CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MissedCallCardItemHolder.this.f23894w.m26688a();
                    }
                });
                return false;
            }

            @Override // com.bumptech.glide.p112e.AbstractC3604g
            /* renamed from: a */
            public final boolean mo26383a(Object obj, Object obj2, AbstractC3585j abstractC3585j, EnumC3658a enumC3658a, boolean z) {
                return false;
            }
        };
        profilePictureView.m26684a(glideRequestBuilder);
        String m26020j = StringUtils.m26020j(missedCallCardDataItem.getName());
        if (StringUtils.m26059a((CharSequence) m26020j)) {
            this.f23894w.setText("?");
        } else {
            this.f23894w.setText(StringUtils.m26010r(m26020j));
        }
        this.f23896y.setTextColor(ThemeUtils.getColor(2131099784));
        this.f23897z.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.4
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                AndroidUtils.m27630a(view, 1);
                Context context = MissedCallCardItemHolder.this.f23897z.getContext();
                Phone phone = missedCallCardDataItem.getPhone();
                MissedCallCardDataItem missedCallCardDataItem2 = missedCallCardDataItem;
                ListsUtils.m27481a(context, phone, missedCallCardDataItem2, ContactUtils.m28326a(missedCallCardDataItem2.getPhone(), missedCallCardDataItem.getContactId()), contactItemViewEvents);
                if (missedCallCardDataItem.getMissedCallType() == 3) {
                    AnalyticsManager.get().m28450a(Constants.MISSED_CALL_CATEGORY, "ClickCallButton");
                } else if (missedCallCardDataItem.getMissedCallType() != 40) {
                } else {
                    AnalyticsManager.get().m28450a(Constants.NOT_ANSWER_CATEGORY, "ClickCallButton");
                }
            }
        });
        this.f23897z.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.missedcall.card._$$Lambda$MissedCallCardItemHolder$xDRcfFTEO1O0FR7HNuA4MgpJFaE
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m29803a;
                m29803a = MissedCallCardItemHolder.this.m29803a(missedCallCardDataItem, contactItemViewEvents, view);
                return m29803a;
            }
        });
        this.f23885A.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z = true;
                List<CallReminderFrequentData> m29829a = MissedCallFrequentManager.m29829a(missedCallCardDataItem.getPhone(), C15484av.m8820a(Integer.valueOf(missedCallCardDataItem.getMissedCallType())));
                if (!CollectionUtils.m26068b(m29829a) || !m29829a.get(0).getFrequentType().equals(CallReminderFrequentData.FrequentType.SHOW_LESS)) {
                    z = false;
                }
                new MissedCallMoreManager().m29816a(MissedCallCardItemHolder.this.f23890s.getContext(), MissedCallCardItemHolder.this.f23890s, MissedCallCardItemHolder.this, z);
                if (missedCallCardDataItem.getMissedCallType() == 3) {
                    AnalyticsManager.get().m28450a(Constants.MISSED_CALL_CATEGORY, "ClickMoreOptions");
                } else if (missedCallCardDataItem.getMissedCallType() != 40) {
                } else {
                    AnalyticsManager.get().m28450a(Constants.NOT_ANSWER_CATEGORY, "ClickMoreOptions");
                }
            }
        });
        final DataChangedInfo create = DataChangedInfo.create(EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), DataChangedInfo.POSITION_ALL, 1);
        this.f23887C.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (missedCallCardDataItem.getMissedCallType() == 3) {
                    AnalyticsManager.get().m28450a(Constants.MISSED_CALL_CATEGORY, "ClickCard");
                } else if (missedCallCardDataItem.getMissedCallType() == 40) {
                    AnalyticsManager.get().m28450a(Constants.NOT_ANSWER_CATEGORY, "ClickCard");
                }
                ListsUtils.m27485a(view.getContext(), missedCallCardDataItem, "missed call", create, ENTRYPOINT.MISSED_CALL_NOT_ANSWERED);
            }
        });
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onDeleteClick() {
        OnDeleteClickListener onDeleteClickListener = this.f23886B;
        if (onDeleteClickListener != null && this.f23888D != null) {
            onDeleteClickListener.mo29782a(this, CallReminderFrequentData.FrequentType.DELETE, this.f23888D.getMissedCallType());
        }
        if (this.f23888D.getMissedCallType() == 3) {
            AnalyticsManager.get().m28449a(Constants.MISSED_CALL_CATEGORY, "ClickMoreOptions", "Delete");
        } else if (this.f23888D.getMissedCallType() != 40) {
        } else {
            AnalyticsManager.get().m28449a(Constants.NOT_ANSWER_CATEGORY, "ClickMoreOptions", "Delete");
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onDontShowClick() {
        OnDeleteClickListener onDeleteClickListener = this.f23886B;
        if (onDeleteClickListener != null) {
            onDeleteClickListener.mo29782a(this, CallReminderFrequentData.FrequentType.DONT_SHOW, this.f23888D.getMissedCallType());
        }
        if (this.f23888D.getMissedCallType() == 3) {
            AnalyticsManager.get().m28449a(Constants.MISSED_CALL_CATEGORY, "ClickMoreOptions", "DontShow");
        } else if (this.f23888D.getMissedCallType() != 40) {
        } else {
            AnalyticsManager.get().m28449a(Constants.NOT_ANSWER_CATEGORY, "ClickMoreOptions", "DontShow");
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.MissedCallMoreManager.OnMissedCallMoreDialogItemClickListener
    public void onShowLessClick() {
        OnDeleteClickListener onDeleteClickListener = this.f23886B;
        if (onDeleteClickListener != null) {
            onDeleteClickListener.mo29782a(this, CallReminderFrequentData.FrequentType.SHOW_LESS, this.f23888D.getMissedCallType());
        }
        if (this.f23888D.getMissedCallType() == 3) {
            AnalyticsManager.get().m28449a(Constants.MISSED_CALL_CATEGORY, "ClickMoreOptions", "ShowLess");
        } else if (this.f23888D.getMissedCallType() != 40) {
        } else {
            AnalyticsManager.get().m28449a(Constants.NOT_ANSWER_CATEGORY, "ClickMoreOptions", "ShowLess");
        }
    }
}
