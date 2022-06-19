package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.MultipleChoiceArrayAdapter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MultiSelectView.class */
public class MultiSelectView extends RetractableLinearLayout {

    /* renamed from: a */
    private List<Checkable> f28770a;

    /* renamed from: b */
    private ViewGroup f28771b;

    public MultiSelectView(Context context) {
        this(context, null);
    }

    public MultiSelectView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultiSelectView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28770a = new ArrayList();
        ((LayoutInflater) Singletons.m28493a("layout_inflater")).inflate(2131558720, (ViewGroup) this, true);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362306);
        this.f28771b = viewGroup;
        if (viewGroup == null) {
            this.f28771b = this;
        }
        View findViewById = findViewById(2131362475);
        findViewById.setBackgroundColor(ThemeUtils.getColor(2131099784));
        ((TextView) findViewById.findViewById(2131363339)).setText(2131886993);
        ViewUtils.m27320a(findViewById(2131363829), ThemeUtils.getDrawable(2131232190));
    }

    public void setCheckedState(int i, boolean z) {
        this.f28770a.get(i).setChecked(z);
    }

    public void setChoices(ArrayList<MultipleChoiceArrayAdapter.MultipleChoiceRowData> arrayList, final MultipleChoiceArrayAdapter.OnCheckedChangedListener onCheckedChangedListener) {
        int ceil = (int) Math.ceil(arrayList.size() / 3.0d);
        this.f28771b.removeAllViews();
        this.f28770a.clear();
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.widget.MultiSelectView.1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (onCheckedChangedListener != null) {
                    compoundButton.getId();
                }
            }
        };
        LayoutInflater layoutInflater = (LayoutInflater) Singletons.m28493a("layout_inflater");
        int i = 0;
        for (int i2 = 0; i2 < ceil; i2++) {
            ViewGroup viewGroup = (ViewGroup) layoutInflater.inflate(2131558930, this.f28771b, false);
            int childCount = viewGroup.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                CheckBox checkBox = (CheckBox) viewGroup.getChildAt(i3);
                checkBox.setId(i);
                if (arrayList.size() > i) {
                    MultipleChoiceArrayAdapter.MultipleChoiceRowData multipleChoiceRowData = arrayList.get(i);
                    checkBox.setVisibility(0);
                    checkBox.setText(multipleChoiceRowData.f28780b);
                    checkBox.setChecked(multipleChoiceRowData.f28781c);
                    checkBox.setOnCheckedChangeListener(onCheckedChangeListener);
                } else {
                    checkBox.setVisibility(4);
                }
                this.f28770a.add(checkBox);
                i++;
            }
            this.f28771b.addView(viewGroup);
        }
        measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        setExpandMaxHeight(getMeasuredHeight());
    }
}
