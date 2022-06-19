package com.callapp.contacts.activity.analytics.progressGraph.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.akexorcist.roundcornerprogressbar.C3244a;
import com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar;
import com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar;
import com.callapp.contacts.activity.analytics.data.items.HoursCallDataItem;
import com.callapp.contacts.databinding.CallTimelineLayoutBinding;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J$\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\b\u0010!\u001a\u00020\"H\u0016J\u001a\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u001a2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u000e\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020'J\b\u0010(\u001a\u00020\"H\u0002J\u0010\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020'H\u0002J\u0018\u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020'2\u0006\u0010-\u001a\u00020\u000fH\u0002J\u000e\u0010.\u001a\u00020\"2\u0006\u0010\b\u001a\u00020\tR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082D¢\u0006\u0002\n��R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015¨\u0006/"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;", "dataCurrent", "Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;", "getDataCurrent", "()Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;", "setDataCurrent", "(Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;)V", "minThreshold", "", "progressIncoming", "Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;", "getProgressIncoming", "()Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;", "setProgressIncoming", "(Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;)V", "progressOutgoing", "getProgressOutgoing", "setProgressOutgoing", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "onViewCreated", "view", "setHeaderVisibility", "visibility", "", "setUpEmpty", "setupIncomingCalls", "incomingChange", "setupOutgoingCalls", "outgoingChange", EventConstants.PROGRESS, "updateData", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment.class */
public final class CallDayNightTimeGraphFragment extends Fragment {

    /* renamed from: a */
    public final float f20182a = 30.0f;

    /* renamed from: b */
    public TextRoundCornerProgressBar f20183b;

    /* renamed from: c */
    public TextRoundCornerProgressBar f20184c;

    /* renamed from: d */
    public HoursCallDataItem f20185d;

    /* renamed from: e */
    private CallTimelineLayoutBinding f20186e;

    public final CallTimelineLayoutBinding getBinding() {
        CallTimelineLayoutBinding callTimelineLayoutBinding = this.f20186e;
        C18524p.m3851a(callTimelineLayoutBinding);
        return callTimelineLayoutBinding;
    }

    public final TextRoundCornerProgressBar getProgressIncoming() {
        TextRoundCornerProgressBar textRoundCornerProgressBar = this.f20184c;
        if (textRoundCornerProgressBar == null) {
            C18524p.m3848a("progressIncoming");
        }
        return textRoundCornerProgressBar;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(inflater, "inflater");
        this.f20186e = CallTimelineLayoutBinding.m29071a(inflater, viewGroup);
        LinearLayout root = getBinding().getRoot();
        C18524p.m3843b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        TextRoundCornerProgressBar textRoundCornerProgressBar = this.f20184c;
        if (textRoundCornerProgressBar == null) {
            C18524p.m3848a("progressIncoming");
        }
        textRoundCornerProgressBar.setOnProgressChangedListener(null);
        this.f20186e = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        C18524p.m3840d(view, "view");
        super.onViewCreated(view, bundle);
        TextRoundCornerProgressBar textRoundCornerProgressBar = getBinding().f24997n.f25011a;
        Objects.requireNonNull(textRoundCornerProgressBar, "null cannot be cast to non-null type com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar");
        this.f20183b = textRoundCornerProgressBar;
        TextRoundCornerProgressBar textRoundCornerProgressBar2 = getBinding().f24996m.f25011a;
        Objects.requireNonNull(textRoundCornerProgressBar2, "null cannot be cast to non-null type com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar");
        this.f20184c = textRoundCornerProgressBar2;
        TextView textView = getBinding().f24995l;
        C18524p.m3843b(textView, "binding.outgoingCallTitle");
        textView.setText(Activities.getString(2131886529));
        TextView textView2 = getBinding().f24988e.f25052e;
        C18524p.m3843b(textView2, "binding.includeGraphsHeaderLayout.textHeader");
        textView2.setText(Activities.getString(2131886532));
        getBinding().f24988e.f25052e.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView3 = getBinding().f24988e.f25051d;
        C18524p.m3843b(textView3, "binding.includeGraphsHeaderLayout.subTextHeader");
        textView3.setText(Activities.getString(2131886531));
        getBinding().f24988e.f25051d.setTextColor(ThemeUtils.getColor(2131100108));
        TextView textView4 = getBinding().f24990g;
        C18524p.m3843b(textView4, "binding.incomingCallTitle");
        textView4.setText(Activities.getString(2131886529));
        getBinding().f24990g.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView5 = getBinding().f24995l;
        C18524p.m3843b(textView5, "binding.outgoingCallTitle");
        textView5.setText(Activities.getString(2131886530));
        getBinding().f24995l.setTextColor(ThemeUtils.getColor(2131100140));
        getBinding().f24988e.f25050c.setBackgroundColor(ThemeUtils.getColor(2131099891));
    }

    public final void setHeaderVisibility(int i) {
        LinearLayout linearLayout = getBinding().f24988e.f25048a;
        C18524p.m3843b(linearLayout, "binding.includeGraphsHea…rLayout.graphHeaderLayout");
        linearLayout.setVisibility(i);
    }

    public final void setupIncomingCalls(final int i) {
        TextRoundCornerProgressBar textRoundCornerProgressBar = this.f20184c;
        if (textRoundCornerProgressBar == null) {
            C18524p.m3848a("progressIncoming");
        }
        textRoundCornerProgressBar.setOnProgressChangedListener(new BaseRoundCornerProgressBar.AbstractC3256a() { // from class: com.callapp.contacts.activity.analytics.progressGraph.fragment.CallDayNightTimeGraphFragment$setupIncomingCalls$1
            @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar.AbstractC3256a
            /* renamed from: a */
            public final void mo26326a(float f) {
                CallTimelineLayoutBinding binding;
                CallTimelineLayoutBinding binding2;
                CallTimelineLayoutBinding binding3;
                CallTimelineLayoutBinding binding4;
                TextRoundCornerProgressBar progressIncoming = CallDayNightTimeGraphFragment.this.getProgressIncoming();
                StringBuilder sb = new StringBuilder();
                sb.append(i);
                sb.append('%');
                progressIncoming.setProgressText(sb.toString());
                binding = CallDayNightTimeGraphFragment.this.getBinding();
                ImageView imageView = binding.f24992i;
                C18524p.m3843b(imageView, "binding.nightImageIncoming");
                if (imageView.getVisibility() == 8) {
                    binding4 = CallDayNightTimeGraphFragment.this.getBinding();
                    ImageView imageView2 = binding4.f24992i;
                    C18524p.m3843b(imageView2, "binding.nightImageIncoming");
                    imageView2.setVisibility(0);
                    CallDayNightTimeGraphFragment.this.getProgressIncoming().setTextProgressColor(ThemeUtils.getColor(2131100228));
                }
                if (f == CallDayNightTimeGraphFragment.this.getProgressIncoming().getMax()) {
                    binding2 = CallDayNightTimeGraphFragment.this.getBinding();
                    TextView textView = binding2.f24986c;
                    C18524p.m3843b(textView, "binding.dayTextIncoming");
                    textView.setVisibility(8);
                    binding3 = CallDayNightTimeGraphFragment.this.getBinding();
                    ImageView imageView3 = binding3.f24984a;
                    C18524p.m3843b(imageView3, "binding.dayImageIncoming");
                    imageView3.setVisibility(8);
                }
            }
        });
        TextView textView = getBinding().f24986c;
        C18524p.m3843b(textView, "binding.dayTextIncoming");
        textView.setText(String.valueOf(100 - i) + "%");
    }

    public final void setupOutgoingCalls(int i, float f) {
        PhoneManager phoneManager = PhoneManager.get();
        C18524p.m3843b(phoneManager, "PhoneManager.get()");
        if (!phoneManager.isDefaultPhoneApp()) {
            TextRoundCornerProgressBar textRoundCornerProgressBar = this.f20183b;
            if (textRoundCornerProgressBar == null) {
                C18524p.m3848a("progressOutgoing");
            }
            textRoundCornerProgressBar.disableAnimation();
            TextRoundCornerProgressBar textRoundCornerProgressBar2 = this.f20183b;
            if (textRoundCornerProgressBar2 == null) {
                C18524p.m3848a("progressOutgoing");
            }
            textRoundCornerProgressBar2.setProgress(BitmapDescriptorFactory.HUE_RED);
            TextView textView = getBinding().f24987d;
            C18524p.m3843b(textView, "binding.dayTextOutgoing");
            textView.setVisibility(8);
            ImageView imageView = getBinding().f24991h;
            C18524p.m3843b(imageView, "binding.lockImageOutgoing");
            imageView.setVisibility(0);
            TextRoundCornerProgressBar textRoundCornerProgressBar3 = this.f20183b;
            if (textRoundCornerProgressBar3 == null) {
                C18524p.m3848a("progressOutgoing");
            }
            textRoundCornerProgressBar3.setProgressColor(ThemeUtils.getColor(C3244a.C3245a.round_corner_progress_bar_progress_default));
            TextRoundCornerProgressBar textRoundCornerProgressBar4 = this.f20183b;
            if (textRoundCornerProgressBar4 == null) {
                C18524p.m3848a("progressOutgoing");
            }
            textRoundCornerProgressBar4.setSecondaryProgressColor(ThemeUtils.getColor(2131099920));
            return;
        }
        TextRoundCornerProgressBar textRoundCornerProgressBar5 = this.f20183b;
        if (textRoundCornerProgressBar5 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append('%');
        textRoundCornerProgressBar5.setProgressText(sb.toString());
        ImageView imageView2 = getBinding().f24991h;
        C18524p.m3843b(imageView2, "binding.lockImageOutgoing");
        imageView2.setVisibility(8);
        TextView textView2 = getBinding().f24987d;
        C18524p.m3843b(textView2, "binding.dayTextOutgoing");
        textView2.setVisibility(0);
        TextRoundCornerProgressBar textRoundCornerProgressBar6 = this.f20183b;
        if (textRoundCornerProgressBar6 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        textRoundCornerProgressBar6.setProgressColors(new int[]{ThemeUtils.getColor(2131100092), ThemeUtils.getColor(2131100087)});
        TextRoundCornerProgressBar textRoundCornerProgressBar7 = this.f20183b;
        if (textRoundCornerProgressBar7 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        textRoundCornerProgressBar7.setSecondaryProgressColors(new int[]{ThemeUtils.getColor(2131100091), ThemeUtils.getColor(2131100086)});
        TextRoundCornerProgressBar textRoundCornerProgressBar8 = this.f20183b;
        if (textRoundCornerProgressBar8 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        float max = textRoundCornerProgressBar8.getMax();
        TextRoundCornerProgressBar textRoundCornerProgressBar9 = this.f20183b;
        if (textRoundCornerProgressBar9 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        if (max - f != textRoundCornerProgressBar9.getMax()) {
            ImageView imageView3 = getBinding().f24993j;
            C18524p.m3843b(imageView3, "binding.nightImageOutgoing");
            if (imageView3.getVisibility() == 8) {
                ImageView imageView4 = getBinding().f24993j;
                C18524p.m3843b(imageView4, "binding.nightImageOutgoing");
                imageView4.setVisibility(0);
                TextRoundCornerProgressBar textRoundCornerProgressBar10 = this.f20183b;
                if (textRoundCornerProgressBar10 == null) {
                    C18524p.m3848a("progressOutgoing");
                }
                textRoundCornerProgressBar10.setTextProgressColor(ThemeUtils.getColor(2131100228));
            }
        }
        TextRoundCornerProgressBar textRoundCornerProgressBar11 = this.f20183b;
        if (textRoundCornerProgressBar11 == null) {
            C18524p.m3848a("progressOutgoing");
        }
        if (f == textRoundCornerProgressBar11.getMax()) {
            TextView textView3 = getBinding().f24987d;
            C18524p.m3843b(textView3, "binding.dayTextOutgoing");
            textView3.setVisibility(8);
            ImageView imageView5 = getBinding().f24985b;
            C18524p.m3843b(imageView5, "binding.dayImageOutgoing");
            imageView5.setVisibility(8);
        }
        TextView textView4 = getBinding().f24987d;
        C18524p.m3843b(textView4, "binding.dayTextOutgoing");
        textView4.setText(String.valueOf(100 - i) + "%");
    }
}
