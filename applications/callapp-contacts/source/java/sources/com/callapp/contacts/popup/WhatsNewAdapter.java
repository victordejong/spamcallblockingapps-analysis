package com.callapp.contacts.popup;

import android.animation.Animator;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseArrayAdapter;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.contacts.widget.CustomLinkMovementMethod;
import com.callapp.contacts.widget.RetractableFrameLayout;
import com.explorestack.iab.mraid.C9568h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/WhatsNewAdapter.class */
public class WhatsNewAdapter extends BaseArrayAdapter<WhatsNewItemData> {

    /* renamed from: c */
    private int f26961c;

    /* renamed from: d */
    private int f26962d;

    /* renamed from: e */
    private final List<WhatsNewItemData> f26963e;

    /* renamed from: a */
    private final int f26959a = ThemeUtils.getColor(2131100108);

    /* renamed from: b */
    private final int f26960b = ThemeUtils.getColor(2131099784);

    /* renamed from: f */
    private boolean f26964f = true;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder.class */
    public static class WhatsNewHolder {

        /* renamed from: a */
        ImageView f26973a;

        /* renamed from: b */
        TextView f26974b;

        /* renamed from: c */
        TextView f26975c;

        /* renamed from: d */
        TextView f26976d;

        /* renamed from: e */
        ImageView f26977e;

        /* renamed from: f */
        RetractableFrameLayout f26978f;

        /* renamed from: g */
        CustomLinkMovementMethod f26979g;

        private WhatsNewHolder() {
            this.f26979g = new CustomLinkMovementMethod();
        }

        /* renamed from: a */
        public final void m28019a(boolean z) {
            if (z) {
                this.f26975c.setVisibility(4);
                this.f26976d.setVisibility(0);
                return;
            }
            this.f26975c.setVisibility(0);
            this.f26976d.setVisibility(4);
        }

        public void setText(CharSequence charSequence) {
            this.f26975c.setText(charSequence);
            this.f26975c.setMovementMethod(this.f26979g);
            this.f26976d.setText(charSequence);
            this.f26976d.setMovementMethod(this.f26979g);
        }
    }

    public WhatsNewAdapter(List<WhatsNewItemData> list) {
        super(list);
        this.f26963e = list;
    }

    /* renamed from: a */
    private static void m28025a(WhatsNewHolder whatsNewHolder, boolean z, boolean z2) {
        whatsNewHolder.f26977e.clearAnimation();
        if (z) {
            if (z2) {
                whatsNewHolder.f26978f.f28856a.m26656a(false);
                CallappAnimationUtils.m27185a(whatsNewHolder.f26977e, 0, 180);
                return;
            }
            whatsNewHolder.f26978f.f28856a.m26656a(true);
            whatsNewHolder.f26977e.setRotation(180.0f);
        } else if (z2) {
            whatsNewHolder.f26978f.f28856a.m26652b(false);
            CallappAnimationUtils.m27185a(whatsNewHolder.f26977e, 180, 0);
        } else {
            whatsNewHolder.f26978f.f28856a.m26652b(true);
            whatsNewHolder.f26977e.setRotation(BitmapDescriptorFactory.HUE_RED);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m28022a(WhatsNewAdapter whatsNewAdapter, WhatsNewHolder whatsNewHolder) {
        WhatsNewItemData whatsNewItemData = (WhatsNewItemData) whatsNewHolder.f26977e.getTag();
        whatsNewItemData.setExpanded(!whatsNewItemData.isExpanded());
        m28025a(whatsNewHolder, whatsNewItemData.isExpanded(), true);
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    /* renamed from: a */
    public final View mo28016a(View view, int i) {
        final WhatsNewHolder whatsNewHolder = new WhatsNewHolder();
        whatsNewHolder.f26973a = (ImageView) view.findViewById(2131362989);
        whatsNewHolder.f26974b = (TextView) view.findViewById(2131364130);
        whatsNewHolder.f26975c = (TextView) view.findViewById(2131364071);
        whatsNewHolder.f26976d = (TextView) view.findViewById(2131364093);
        whatsNewHolder.f26977e = (ImageView) view.findViewById(2131362764);
        whatsNewHolder.f26978f = (RetractableFrameLayout) view.findViewById(2131363305);
        if (this.f26964f) {
            this.f26964f = false;
            whatsNewHolder.f26978f.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.callapp.contacts.popup.WhatsNewAdapter.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    whatsNewHolder.f26978f.getViewTreeObserver().removeOnPreDrawListener(this);
                    WhatsNewAdapter.this.f26961c = whatsNewHolder.f26978f.getWidth();
                    if (WhatsNewAdapter.this.f26962d == 0) {
                        WhatsNewAdapter whatsNewAdapter = WhatsNewAdapter.this;
                        whatsNewAdapter.f26962d = ViewUtils.m27332a(whatsNewAdapter.getContext(), WhatsNewAdapter.this.f26961c, Typeface.SANS_SERIF, C9568h.f32519a);
                    }
                    WhatsNewAdapter.this.notifyDataSetChanged();
                    return true;
                }
            });
        }
        view.setTag(whatsNewHolder);
        whatsNewHolder.f26975c.setTextColor(this.f26959a);
        whatsNewHolder.f26975c.setText(Activities.getString(2131887657));
        whatsNewHolder.f26976d.setTextColor(this.f26959a);
        whatsNewHolder.f26977e.setColorFilter(new PorterDuffColorFilter(this.f26960b, PorterDuff.Mode.SRC_IN));
        whatsNewHolder.f26977e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.WhatsNewAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AndroidUtils.m27630a(view2, 1);
                WhatsNewAdapter.m28022a(WhatsNewAdapter.this, whatsNewHolder);
            }
        });
        whatsNewHolder.f26978f.setExpandListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.popup.WhatsNewAdapter.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                whatsNewHolder.m28019a(false);
            }
        });
        whatsNewHolder.f26978f.setCollapseListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.popup.WhatsNewAdapter.4
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                whatsNewHolder.m28019a(true);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        return view;
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo28015a(View view, int i, WhatsNewItemData whatsNewItemData) {
        WhatsNewItemData whatsNewItemData2 = whatsNewItemData;
        WhatsNewHolder whatsNewHolder = (WhatsNewHolder) view.getTag();
        if (whatsNewItemData2.isHeader()) {
            whatsNewHolder.f26973a.setVisibility(8);
            whatsNewHolder.f26974b.setText(whatsNewItemData2.getTitle());
            whatsNewHolder.f26974b.setTextColor(this.f26960b);
            whatsNewHolder.setText("");
            whatsNewHolder.f26977e.setVisibility(8);
            whatsNewHolder.f26977e.setTag(null);
        } else {
            whatsNewHolder.f26973a.setVisibility(0);
            ImageUtils.m27529a(whatsNewHolder.f26973a, whatsNewItemData2.getIconResId(), new PorterDuffColorFilter(this.f26960b, PorterDuff.Mode.SRC_IN));
            whatsNewHolder.f26974b.setText(whatsNewItemData2.getTitle());
            whatsNewHolder.f26974b.setTextColor(ThemeUtils.m27386a(view.getContext(), 2131100140));
            whatsNewHolder.setText(whatsNewItemData2.getText());
            whatsNewHolder.f26978f.setCollapseMinHeight(whatsNewItemData2.getTextMinHeight());
            whatsNewHolder.f26978f.setExpandMaxHeight(whatsNewItemData2.getTextMaxHeight());
            whatsNewHolder.f26977e.setVisibility(0);
            whatsNewHolder.f26977e.setTag(whatsNewItemData2);
        }
        m28025a(whatsNewHolder, whatsNewItemData2.isExpanded(), false);
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public int getLayoutResourceId(int i) {
        return 2131559179;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        for (WhatsNewItemData whatsNewItemData : this.f26963e) {
            whatsNewItemData.setTextMaxHeight(ViewUtils.m27332a(getContext(), this.f26961c, Typeface.SANS_SERIF, whatsNewItemData.getText()));
            whatsNewItemData.setTextMinHeight(this.f26962d);
        }
    }
}
