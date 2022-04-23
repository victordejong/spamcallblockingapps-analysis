package com.callapp.contacts.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MultipleChoiceArrayAdapter.class */
public class MultipleChoiceArrayAdapter extends ArrayAdapter<MultipleChoiceRowData> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f16540a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<MultipleChoiceRowData> f16541b;

    /* renamed from: c  reason: collision with root package name */
    private OnCheckedChangedListener f16542c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData.class */
    public static class MultipleChoiceRowData {

        /* renamed from: a  reason: collision with root package name */
        public final int f16545a;

        /* renamed from: b  reason: collision with root package name */
        public final String f16546b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f16547c;

        public MultipleChoiceRowData(int i, String str, boolean z) {
            this.f16545a = i;
            this.f16546b = str;
            this.f16547c = z;
        }

        public MultipleChoiceRowData(String str, boolean z) {
            this.f16545a = 0;
            this.f16546b = str;
            this.f16547c = z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/MultipleChoiceArrayAdapter$OnCheckedChangedListener.class */
    public interface OnCheckedChangedListener {
    }

    public MultipleChoiceArrayAdapter(Context context, int i, ArrayList<MultipleChoiceRowData> arrayList) {
        super(context, i, arrayList);
        this.f16540a = context;
        this.f16541b = arrayList;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        final CheckedTextView checkedTextView;
        if (view == null) {
            view = ((LayoutInflater) this.f16540a.getSystemService("layout_inflater")).inflate(2131558550, viewGroup, false);
            checkedTextView = (CheckedTextView) view.findViewById(2131362300);
            checkedTextView.setTextColor(ThemeUtils.getColor(2131100140));
            checkedTextView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.MultipleChoiceArrayAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    checkedTextView.toggle();
                    ((MultipleChoiceRowData) MultipleChoiceArrayAdapter.this.f16541b.get(((Integer) checkedTextView.getTag()).intValue())).f16547c = checkedTextView.isChecked();
                    if (MultipleChoiceArrayAdapter.this.f16542c != null) {
                        OnCheckedChangedListener unused = MultipleChoiceArrayAdapter.this.f16542c;
                    }
                }
            });
            ViewUtils.a(view, ThemeUtils.getDrawable(2131230995));
            view.setTag(checkedTextView);
        } else {
            checkedTextView = (CheckedTextView) view.getTag();
        }
        checkedTextView.setTag(Integer.valueOf(i));
        MultipleChoiceRowData multipleChoiceRowData = this.f16541b.get(i);
        checkedTextView.setText(multipleChoiceRowData.f16546b);
        checkedTextView.setChecked(multipleChoiceRowData.f16547c);
        return view;
    }
}
