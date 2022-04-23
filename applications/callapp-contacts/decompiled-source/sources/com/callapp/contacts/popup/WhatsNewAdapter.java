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
import com.explorestack.iab.mraid.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/WhatsNewAdapter.class */
public class WhatsNewAdapter extends BaseArrayAdapter<WhatsNewItemData> {

    /* renamed from: c  reason: collision with root package name */
    private int f15386c;

    /* renamed from: d  reason: collision with root package name */
    private int f15387d;
    private final List<WhatsNewItemData> e;

    /* renamed from: a  reason: collision with root package name */
    private final int f15384a = ThemeUtils.getColor(2131100108);

    /* renamed from: b  reason: collision with root package name */
    private final int f15385b = ThemeUtils.getColor(2131099784);
    private boolean f = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder.class */
    public static class WhatsNewHolder {

        /* renamed from: a  reason: collision with root package name */
        ImageView f15396a;

        /* renamed from: b  reason: collision with root package name */
        TextView f15397b;

        /* renamed from: c  reason: collision with root package name */
        TextView f15398c;

        /* renamed from: d  reason: collision with root package name */
        TextView f15399d;
        ImageView e;
        RetractableFrameLayout f;
        CustomLinkMovementMethod g;

        private WhatsNewHolder() {
            this.g = new CustomLinkMovementMethod();
        }

        public final void a(boolean z) {
            if (z) {
                this.f15398c.setVisibility(4);
                this.f15399d.setVisibility(0);
                return;
            }
            this.f15398c.setVisibility(0);
            this.f15399d.setVisibility(4);
        }

        public void setText(CharSequence charSequence) {
            this.f15398c.setText(charSequence);
            this.f15398c.setMovementMethod(this.g);
            this.f15399d.setText(charSequence);
            this.f15399d.setMovementMethod(this.g);
        }
    }

    public WhatsNewAdapter(List<WhatsNewItemData> list) {
        super(list);
        this.e = list;
    }

    private static void a(WhatsNewHolder whatsNewHolder, boolean z, boolean z2) {
        whatsNewHolder.e.clearAnimation();
        if (z) {
            if (z2) {
                whatsNewHolder.f.f16573a.a(false);
                CallappAnimationUtils.a(whatsNewHolder.e, 0, 180);
                return;
            }
            whatsNewHolder.f.f16573a.a(true);
            whatsNewHolder.e.setRotation(180.0f);
        } else if (z2) {
            whatsNewHolder.f.f16573a.b(false);
            CallappAnimationUtils.a(whatsNewHolder.e, 180, 0);
        } else {
            whatsNewHolder.f.f16573a.b(true);
            whatsNewHolder.e.setRotation(BitmapDescriptorFactory.HUE_RED);
        }
    }

    static /* synthetic */ void a(WhatsNewAdapter whatsNewAdapter, WhatsNewHolder whatsNewHolder) {
        WhatsNewItemData whatsNewItemData = (WhatsNewItemData) whatsNewHolder.e.getTag();
        whatsNewItemData.setExpanded(!whatsNewItemData.isExpanded());
        a(whatsNewHolder, whatsNewItemData.isExpanded(), true);
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public final View a(View view, int i) {
        final WhatsNewHolder whatsNewHolder = new WhatsNewHolder();
        whatsNewHolder.f15396a = (ImageView) view.findViewById(2131362989);
        whatsNewHolder.f15397b = (TextView) view.findViewById(2131364130);
        whatsNewHolder.f15398c = (TextView) view.findViewById(2131364071);
        whatsNewHolder.f15399d = (TextView) view.findViewById(2131364093);
        whatsNewHolder.e = (ImageView) view.findViewById(2131362764);
        whatsNewHolder.f = (RetractableFrameLayout) view.findViewById(2131363305);
        if (this.f) {
            this.f = false;
            whatsNewHolder.f.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.callapp.contacts.popup.WhatsNewAdapter.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    whatsNewHolder.f.getViewTreeObserver().removeOnPreDrawListener(this);
                    WhatsNewAdapter.this.f15386c = whatsNewHolder.f.getWidth();
                    if (WhatsNewAdapter.this.f15387d == 0) {
                        WhatsNewAdapter whatsNewAdapter = WhatsNewAdapter.this;
                        whatsNewAdapter.f15387d = ViewUtils.a(whatsNewAdapter.getContext(), WhatsNewAdapter.this.f15386c, Typeface.SANS_SERIF, h.f19142a);
                    }
                    WhatsNewAdapter.this.notifyDataSetChanged();
                    return true;
                }
            });
        }
        view.setTag(whatsNewHolder);
        whatsNewHolder.f15398c.setTextColor(this.f15384a);
        whatsNewHolder.f15398c.setText(Activities.getString(2131887657));
        whatsNewHolder.f15399d.setTextColor(this.f15384a);
        whatsNewHolder.e.setColorFilter(new PorterDuffColorFilter(this.f15385b, PorterDuff.Mode.SRC_IN));
        whatsNewHolder.e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.WhatsNewAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AndroidUtils.a(view2, 1);
                WhatsNewAdapter.a(WhatsNewAdapter.this, whatsNewHolder);
            }
        });
        whatsNewHolder.f.setExpandListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.popup.WhatsNewAdapter.3
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
                whatsNewHolder.a(false);
            }
        });
        whatsNewHolder.f.setCollapseListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.popup.WhatsNewAdapter.4
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                whatsNewHolder.a(true);
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
    public final /* synthetic */ void a(View view, int i, WhatsNewItemData whatsNewItemData) {
        WhatsNewItemData whatsNewItemData2 = whatsNewItemData;
        WhatsNewHolder whatsNewHolder = (WhatsNewHolder) view.getTag();
        if (whatsNewItemData2.isHeader()) {
            whatsNewHolder.f15396a.setVisibility(8);
            whatsNewHolder.f15397b.setText(whatsNewItemData2.getTitle());
            whatsNewHolder.f15397b.setTextColor(this.f15385b);
            whatsNewHolder.setText("");
            whatsNewHolder.e.setVisibility(8);
            whatsNewHolder.e.setTag(null);
        } else {
            whatsNewHolder.f15396a.setVisibility(0);
            ImageUtils.a(whatsNewHolder.f15396a, whatsNewItemData2.getIconResId(), new PorterDuffColorFilter(this.f15385b, PorterDuff.Mode.SRC_IN));
            whatsNewHolder.f15397b.setText(whatsNewItemData2.getTitle());
            whatsNewHolder.f15397b.setTextColor(ThemeUtils.a(view.getContext(), 2131100140));
            whatsNewHolder.setText(whatsNewItemData2.getText());
            whatsNewHolder.f.setCollapseMinHeight(whatsNewItemData2.getTextMinHeight());
            whatsNewHolder.f.setExpandMaxHeight(whatsNewItemData2.getTextMaxHeight());
            whatsNewHolder.e.setVisibility(0);
            whatsNewHolder.e.setTag(whatsNewItemData2);
        }
        a(whatsNewHolder, whatsNewItemData2.isExpanded(), false);
    }

    @Override // com.callapp.contacts.activity.base.BaseArrayAdapter
    public int getLayoutResourceId(int i) {
        return 2131559179;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        for (WhatsNewItemData whatsNewItemData : this.e) {
            whatsNewItemData.setTextMaxHeight(ViewUtils.a(getContext(), this.f15386c, Typeface.SANS_SERIF, whatsNewItemData.getText()));
            whatsNewItemData.setTextMinHeight(this.f15387d);
        }
    }
}
