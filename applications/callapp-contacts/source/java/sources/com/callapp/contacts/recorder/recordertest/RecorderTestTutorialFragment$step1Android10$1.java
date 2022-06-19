package com.callapp.contacts.recorder.recordertest;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.callapp.contacts.databinding.RecorderTestTutorialBinding;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "", "run"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1.class */
public final class RecorderTestTutorialFragment$step1Android10$1 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RecorderTestTutorialFragment f27543a;

    /* renamed from: b */
    final /* synthetic */ boolean f27544b;

    public RecorderTestTutorialFragment$step1Android10$1(RecorderTestTutorialFragment recorderTestTutorialFragment, boolean z) {
        this.f27543a = recorderTestTutorialFragment;
        this.f27544b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecorderTestTutorialBinding binding;
        RecorderTestTutorialBinding binding2;
        RecorderTestTutorialBinding binding3;
        RecorderTestTutorialBinding binding4;
        RecorderTestTutorialBinding binding5;
        RecorderTestTutorialBinding binding6;
        RecorderTestTutorialBinding binding7;
        RecorderTestTutorialBinding binding8;
        RecorderTestTutorialBinding binding9;
        RecorderTestTutorialBinding binding10;
        RecorderTestTutorialBinding binding11;
        RecorderTestTutorialBinding binding12;
        RecorderTestTutorialBinding binding13;
        RecorderTestTutorialBinding binding14;
        RecorderTestTutorialBinding binding15;
        RecorderTestTutorialBinding binding16;
        binding = this.f27543a.getBinding();
        new GlideUtils.GifPlayer(this.f27543a.getActivity(), binding.f25098d, 2131230815, -1, true);
        binding2 = this.f27543a.getBinding();
        binding2.f25101g.setBackgroundColor(ThemeUtils.getColor(2131099891));
        binding3 = this.f27543a.getBinding();
        TextView textView = binding3.f25110p;
        textView.setText(Activities.getString(2131886135));
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        binding4 = this.f27543a.getBinding();
        TextView textView2 = binding4.f25112r;
        textView2.setText(Activities.getText(2131887496));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        binding5 = this.f27543a.getBinding();
        TextView textView3 = binding5.f25114t;
        C18524p.m3843b(textView3, "binding.step2Text");
        textView3.setText(Activities.getString(2131886136));
        binding6 = this.f27543a.getBinding();
        View view = binding6.f25101g;
        C18524p.m3843b(view, "binding.divider");
        view.setVisibility(0);
        binding7 = this.f27543a.getBinding();
        Button button = binding7.f25095a;
        button.setText(Activities.getText(2131886231));
        ViewUtils.m27316a((View) button, Integer.valueOf(ThemeUtils.getColor(2131099784)), (Integer) 0);
        button.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View v) {
                C18524p.m3840d(v, "v");
                Activities.m27690a(RecorderTestTutorialFragment$step1Android10$1.this.f27543a.getActivity(), RecorderTestTutorialFragment$step1Android10$1.this.f27543a);
            }
        });
        binding8 = this.f27543a.getBinding();
        TextView textView4 = binding8.f25097c;
        textView4.setText(Activities.getText(2131886738));
        textView4.setTextColor(ThemeUtils.getColor(2131100140));
        textView4.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View v) {
                RecorderTestTutorialBinding binding17;
                RecorderTestTutorialBinding binding18;
                C18524p.m3840d(v, "v");
                binding17 = RecorderTestTutorialFragment$step1Android10$1.this.f27543a.getBinding();
                LinearLayout linearLayout = binding17.f25099e;
                C18524p.m3843b(linearLayout, "binding.accessibilityPermissionContainer");
                linearLayout.setVisibility(8);
                binding18 = RecorderTestTutorialFragment$step1Android10$1.this.f27543a.getBinding();
                LinearLayout linearLayout2 = binding18.f25113s;
                C18524p.m3843b(linearLayout2, "binding.step2Container");
                linearLayout2.setVisibility(0);
            }
        });
        if (this.f27544b) {
            binding14 = this.f27543a.getBinding();
            binding14.f25112r.setTextColor(ThemeUtils.getColor(2131099919));
            binding15 = this.f27543a.getBinding();
            LinearLayout linearLayout = binding15.f25099e;
            C18524p.m3843b(linearLayout, "binding.accessibilityPermissionContainer");
            linearLayout.setVisibility(8);
            binding16 = this.f27543a.getBinding();
            LinearLayout linearLayout2 = binding16.f25113s;
            C18524p.m3843b(linearLayout2, "binding.step2Container");
            linearLayout2.setVisibility(0);
        } else {
            binding10 = this.f27543a.getBinding();
            LinearLayout linearLayout3 = binding10.f25109o;
            C18524p.m3843b(linearLayout3, "binding.step1Container");
            linearLayout3.setVisibility(0);
            binding11 = this.f27543a.getBinding();
            LinearLayout linearLayout4 = binding11.f25113s;
            C18524p.m3843b(linearLayout4, "binding.step2Container");
            linearLayout4.setVisibility(8);
            binding12 = this.f27543a.getBinding();
            ImageView imageView = binding12.f25100f;
            C18524p.m3843b(imageView, "binding.arrowToggle");
            imageView.setRotation(180.0f);
            binding13 = this.f27543a.getBinding();
            LinearLayout linearLayout5 = binding13.f25099e;
            C18524p.m3843b(linearLayout5, "binding.accessibilityPermissionContainer");
            linearLayout5.setVisibility(0);
        }
        binding9 = this.f27543a.getBinding();
        binding9.f25111q.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment$step1Android10$1.5
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View v) {
                RecorderTestTutorialBinding binding17;
                RecorderTestTutorialBinding binding18;
                RecorderTestTutorialBinding binding19;
                RecorderTestTutorialBinding binding20;
                RecorderTestTutorialBinding binding21;
                C18524p.m3840d(v, "v");
                if (!RecorderTestTutorialFragment$step1Android10$1.this.f27544b) {
                    binding17 = RecorderTestTutorialFragment$step1Android10$1.this.f27543a.getBinding();
                    LinearLayout linearLayout6 = binding17.f25099e;
                    if (linearLayout6.getVisibility() == 0) {
                        linearLayout6.setVisibility(8);
                        binding20 = RecorderTestTutorialFragment$step1Android10$1.this.f27543a.getBinding();
                        ImageView imageView2 = binding20.f25100f;
                        C18524p.m3843b(imageView2, "binding.arrowToggle");
                        imageView2.setRotation(BitmapDescriptorFactory.HUE_RED);
                        binding21 = RecorderTestTutorialFragment$step1Android10$1.this.f27543a.getBinding();
                        LinearLayout linearLayout7 = binding21.f25113s;
                        C18524p.m3843b(linearLayout7, "binding.step2Container");
                        linearLayout7.setVisibility(0);
                        return;
                    }
                    binding18 = RecorderTestTutorialFragment$step1Android10$1.this.f27543a.getBinding();
                    ImageView imageView3 = binding18.f25100f;
                    C18524p.m3843b(imageView3, "binding.arrowToggle");
                    imageView3.setRotation(180.0f);
                    linearLayout6.setVisibility(0);
                    binding19 = RecorderTestTutorialFragment$step1Android10$1.this.f27543a.getBinding();
                    LinearLayout linearLayout8 = binding19.f25113s;
                    C18524p.m3843b(linearLayout8, "binding.step2Container");
                    linearLayout8.setVisibility(8);
                }
            }
        });
    }
}
