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
import kotlin.jvm.internal.p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1.class */
public final class RecorderTestTutorialFragment$step1Android10$1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ RecorderTestTutorialFragment f15736a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ boolean f15737b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecorderTestTutorialFragment$step1Android10$1(RecorderTestTutorialFragment recorderTestTutorialFragment, boolean z) {
        this.f15736a = recorderTestTutorialFragment;
        this.f15737b = z;
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
        binding = this.f15736a.getBinding();
        new GlideUtils.GifPlayer(this.f15736a.getActivity(), binding.f14355d, 2131230815, -1, true);
        binding2 = this.f15736a.getBinding();
        binding2.g.setBackgroundColor(ThemeUtils.getColor(2131099891));
        binding3 = this.f15736a.getBinding();
        TextView textView = binding3.p;
        textView.setText(Activities.getString(2131886135));
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        binding4 = this.f15736a.getBinding();
        TextView textView2 = binding4.r;
        textView2.setText(Activities.getText(2131887496));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        binding5 = this.f15736a.getBinding();
        TextView textView3 = binding5.t;
        p.b(textView3, "binding.step2Text");
        textView3.setText(Activities.getString(2131886136));
        binding6 = this.f15736a.getBinding();
        View view = binding6.g;
        p.b(view, "binding.divider");
        view.setVisibility(0);
        binding7 = this.f15736a.getBinding();
        Button button = binding7.f14352a;
        button.setText(Activities.getText(2131886231));
        ViewUtils.a((View) button, Integer.valueOf(ThemeUtils.getColor(2131099784)), (Integer) 0);
        button.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View v) {
                p.d(v, "v");
                Activities.a(RecorderTestTutorialFragment$step1Android10$1.this.f15736a.getActivity(), RecorderTestTutorialFragment$step1Android10$1.this.f15736a);
            }
        });
        binding8 = this.f15736a.getBinding();
        TextView textView4 = binding8.f14354c;
        textView4.setText(Activities.getText(2131886738));
        textView4.setTextColor(ThemeUtils.getColor(2131100140));
        textView4.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View v) {
                RecorderTestTutorialBinding binding17;
                RecorderTestTutorialBinding binding18;
                p.d(v, "v");
                binding17 = RecorderTestTutorialFragment$step1Android10$1.this.f15736a.getBinding();
                LinearLayout linearLayout = binding17.e;
                p.b(linearLayout, "binding.accessibilityPermissionContainer");
                linearLayout.setVisibility(8);
                binding18 = RecorderTestTutorialFragment$step1Android10$1.this.f15736a.getBinding();
                LinearLayout linearLayout2 = binding18.s;
                p.b(linearLayout2, "binding.step2Container");
                linearLayout2.setVisibility(0);
            }
        });
        if (this.f15737b) {
            binding14 = this.f15736a.getBinding();
            binding14.r.setTextColor(ThemeUtils.getColor(2131099919));
            binding15 = this.f15736a.getBinding();
            LinearLayout linearLayout = binding15.e;
            p.b(linearLayout, "binding.accessibilityPermissionContainer");
            linearLayout.setVisibility(8);
            binding16 = this.f15736a.getBinding();
            LinearLayout linearLayout2 = binding16.s;
            p.b(linearLayout2, "binding.step2Container");
            linearLayout2.setVisibility(0);
        } else {
            binding10 = this.f15736a.getBinding();
            LinearLayout linearLayout3 = binding10.o;
            p.b(linearLayout3, "binding.step1Container");
            linearLayout3.setVisibility(0);
            binding11 = this.f15736a.getBinding();
            LinearLayout linearLayout4 = binding11.s;
            p.b(linearLayout4, "binding.step2Container");
            linearLayout4.setVisibility(8);
            binding12 = this.f15736a.getBinding();
            ImageView imageView = binding12.f;
            p.b(imageView, "binding.arrowToggle");
            imageView.setRotation(180.0f);
            binding13 = this.f15736a.getBinding();
            LinearLayout linearLayout5 = binding13.e;
            p.b(linearLayout5, "binding.accessibilityPermissionContainer");
            linearLayout5.setVisibility(0);
        }
        binding9 = this.f15736a.getBinding();
        binding9.q.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.recorder.recordertest.RecorderTestTutorialFragment$step1Android10$1.5
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View v) {
                RecorderTestTutorialBinding binding17;
                RecorderTestTutorialBinding binding18;
                RecorderTestTutorialBinding binding19;
                RecorderTestTutorialBinding binding20;
                RecorderTestTutorialBinding binding21;
                p.d(v, "v");
                if (!RecorderTestTutorialFragment$step1Android10$1.this.f15737b) {
                    binding17 = RecorderTestTutorialFragment$step1Android10$1.this.f15736a.getBinding();
                    LinearLayout linearLayout6 = binding17.e;
                    if (linearLayout6.getVisibility() == 0) {
                        linearLayout6.setVisibility(8);
                        binding20 = RecorderTestTutorialFragment$step1Android10$1.this.f15736a.getBinding();
                        ImageView imageView2 = binding20.f;
                        p.b(imageView2, "binding.arrowToggle");
                        imageView2.setRotation(BitmapDescriptorFactory.HUE_RED);
                        binding21 = RecorderTestTutorialFragment$step1Android10$1.this.f15736a.getBinding();
                        LinearLayout linearLayout7 = binding21.s;
                        p.b(linearLayout7, "binding.step2Container");
                        linearLayout7.setVisibility(0);
                        return;
                    }
                    binding18 = RecorderTestTutorialFragment$step1Android10$1.this.f15736a.getBinding();
                    ImageView imageView3 = binding18.f;
                    p.b(imageView3, "binding.arrowToggle");
                    imageView3.setRotation(180.0f);
                    linearLayout6.setVisibility(0);
                    binding19 = RecorderTestTutorialFragment$step1Android10$1.this.f15736a.getBinding();
                    LinearLayout linearLayout8 = binding19.s;
                    p.b(linearLayout8, "binding.step2Container");
                    linearLayout8.setVisibility(8);
                }
            }
        });
    }
}
