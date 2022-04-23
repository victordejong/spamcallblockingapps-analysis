package com.privacystar.core.p011ui.debug.widgets;

import android.content.Context;
import android.os.Bundle;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.widgets.PSDialogFragment;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� 12\u00020\u0001:\u00011B\u0005¢\u0006\u0002\u0010\u0002J&\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u001a\u0010/\u001a\u00020\u00182\u0006\u00100\u001a\u00020(2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R$\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\b\u001a\u0004\b\u0013\u0010\u0014R(\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\b\u001a\u0004\b$\u0010%¨\u00062"}, m254d2 = {"Lcom/privacystar/core/ui/debug/widgets/DropDownDialogForm;", "Lcom/privacystar/core/ui/widgets/PSDialogFragment;", "()V", "button", "Landroid/widget/Button;", "getButton", "()Landroid/widget/Button;", "button$delegate", "Lkotlin/Lazy;", "choices", "", "", "getChoices", "()[Ljava/lang/String;", "setChoices", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "editText", "Landroid/widget/AutoCompleteTextView;", "getEditText", "()Landroid/widget/AutoCompleteTextView;", "editText$delegate", "onFinishListener", "Lkotlin/Function1;", "", "getOnFinishListener", "()Lkotlin/jvm/functions/Function1;", "setOnFinishListener", "(Lkotlin/jvm/functions/Function1;)V", "title", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "titleTv", "Landroid/widget/TextView;", "getTitleTv", "()Landroid/widget/TextView;", "titleTv$delegate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", Promotion.ACTION_VIEW, "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.widgets.DropDownDialogForm */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/widgets/DropDownDialogForm.class */
public final class DropDownDialogForm extends PSDialogFragment {
    @NotNull
    private static final String CLASS_TAG = "DropDownDialogForm";
    private HashMap _$_findViewCache;
    @Nullable
    private String[] choices;
    @Nullable
    private Function1<? super String, Unit> onFinishListener;
    @Nullable
    private String title;
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DropDownDialogForm.class), "titleTv", "getTitleTv()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DropDownDialogForm.class), "editText", "getEditText()Landroid/widget/AutoCompleteTextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(DropDownDialogForm.class), "button", "getButton()Landroid/widget/Button;"))};
    public static final Companion Companion = new Companion(null);
    private final Lazy titleTv$delegate = LazyKt.lazy(new DropDownDialogForm$titleTv$2(this));
    private final Lazy editText$delegate = LazyKt.lazy(new DropDownDialogForm$editText$2(this));
    private final Lazy button$delegate = LazyKt.lazy(new DropDownDialogForm$button$2(this));

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J?\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\r2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f¢\u0006\u0002\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/ui/debug/widgets/DropDownDialogForm$Companion;", "", "()V", "CLASS_TAG", "", "getCLASS_TAG", "()Ljava/lang/String;", "showDropDownDialogForm", "Lcom/privacystar/core/ui/debug/widgets/DropDownDialogForm;", "fragmentManager", "Landroid/support/v4/app/FragmentManager;", "title", "choices", "", "fn", "Lkotlin/Function1;", "", "(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/privacystar/core/ui/debug/widgets/DropDownDialogForm;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.debug.widgets.DropDownDialogForm$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/widgets/DropDownDialogForm$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String getCLASS_TAG() {
            return DropDownDialogForm.CLASS_TAG;
        }

        @NotNull
        public final DropDownDialogForm showDropDownDialogForm(@NotNull FragmentManager fragmentManager, @NotNull String title, @NotNull String[] choices, @Nullable Function1<? super String, Unit> function1) {
            Intrinsics.checkParameterIsNotNull(fragmentManager, "fragmentManager");
            Intrinsics.checkParameterIsNotNull(title, "title");
            Intrinsics.checkParameterIsNotNull(choices, "choices");
            DropDownDialogForm dropDownDialogForm = new DropDownDialogForm();
            dropDownDialogForm.setOnFinishListener(function1);
            dropDownDialogForm.setChoices(choices);
            dropDownDialogForm.setTitle(title);
            dropDownDialogForm.show(fragmentManager, getCLASS_TAG());
            return dropDownDialogForm;
        }
    }

    private final Button getButton() {
        Lazy lazy = this.button$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (Button) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AutoCompleteTextView getEditText() {
        Lazy lazy = this.editText$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (AutoCompleteTextView) lazy.getValue();
    }

    private final TextView getTitleTv() {
        Lazy lazy = this.titleTv$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TextView) lazy.getValue();
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Nullable
    public final String[] getChoices() {
        return this.choices;
    }

    @Nullable
    public final Function1<String, Unit> getOnFinishListener() {
        return this.onFinishListener;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(C1566R.C1571layout.dialog_drop_down_form, viewGroup);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        String str = this.title;
        if (str != null) {
            getTitleTv().setText(str);
        }
        String[] strArr = this.choices;
        if (strArr != null) {
            Context context = getContext();
            if (context != null) {
                getEditText().setAdapter(new ArrayAdapter(context, 17367058, strArr));
            }
            getEditText().setThreshold(0);
        }
        getButton().setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.debug.widgets.DropDownDialogForm$onViewCreated$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AutoCompleteTextView editText;
                Function1<String, Unit> onFinishListener = DropDownDialogForm.this.getOnFinishListener();
                if (onFinishListener != null) {
                    editText = DropDownDialogForm.this.getEditText();
                    onFinishListener.invoke(editText.getText().toString());
                }
                DropDownDialogForm.this.dismissAllowingStateLoss();
            }
        });
    }

    public final void setChoices(@Nullable String[] strArr) {
        this.choices = strArr;
    }

    public final void setOnFinishListener(@Nullable Function1<? super String, Unit> function1) {
        this.onFinishListener = function1;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }
}
