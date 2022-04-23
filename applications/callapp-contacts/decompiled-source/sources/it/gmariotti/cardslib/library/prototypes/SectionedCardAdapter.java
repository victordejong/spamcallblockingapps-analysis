package it.gmariotti.cardslib.library.prototypes;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.c;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/SectionedCardAdapter.class */
public class SectionedCardAdapter extends BaseAdapter {
    private BaseAdapter mBaseAdapter;
    private SparseArray<CardSection> mCardSections;
    private LayoutInflater mLayoutInflater;
    private int mSectionResourceId;
    private boolean mValid;

    public SectionedCardAdapter(Context context, int i, c cVar) {
        this.mValid = true;
        this.mSectionResourceId = a.e.base_section_layout;
        this.mCardSections = new SparseArray<>();
        this.mLayoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mBaseAdapter = cVar;
        this.mSectionResourceId = i;
        cVar.registerDataSetObserver(new DataSetObserver() { // from class: it.gmariotti.cardslib.library.prototypes.SectionedCardAdapter.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                SectionedCardAdapter sectionedCardAdapter = SectionedCardAdapter.this;
                sectionedCardAdapter.mValid = !sectionedCardAdapter.mBaseAdapter.isEmpty();
                SectionedCardAdapter.this.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                SectionedCardAdapter.this.mValid = false;
                SectionedCardAdapter.this.notifyDataSetInvalidated();
            }
        });
    }

    public SectionedCardAdapter(Context context, c cVar) {
        this(context, a.e.base_section_layout, cVar);
    }

    public void addCardSection(CardSection cardSection) {
        if (cardSection != null) {
            int size = this.mCardSections.size();
            CardSection[] cardSectionArr = new CardSection[size + 1];
            for (int i = 0; i < this.mCardSections.size(); i++) {
                cardSectionArr[i] = this.mCardSections.valueAt(i);
            }
            cardSectionArr[size] = cardSection;
            setCardSections(cardSectionArr);
        }
    }

    public void addCardSections(CardSection[] cardSectionArr) {
        if (cardSectionArr != null && cardSectionArr.length > 0) {
            int size = this.mCardSections.size();
            CardSection[] cardSectionArr2 = new CardSection[cardSectionArr.length + size];
            for (int i = 0; i < this.mCardSections.size(); i++) {
                cardSectionArr2[i] = this.mCardSections.valueAt(i);
            }
            for (int i2 = 0; i2 < cardSectionArr.length; i2++) {
                cardSectionArr2[i2 + size] = cardSectionArr[i2];
            }
            setCardSections(cardSectionArr2);
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    public SparseArray<CardSection> getCardSections() {
        return this.mCardSections;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mValid) {
            return this.mBaseAdapter.getCount() + this.mCardSections.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return isSectionHeaderPosition(i) ? this.mCardSections.get(i) : this.mBaseAdapter.getItem(sectionedPositionToPosition(i));
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return isSectionHeaderPosition(i) ? Integer.MAX_VALUE - this.mCardSections.indexOfKey(i) : this.mBaseAdapter.getItemId(sectionedPositionToPosition(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return isSectionHeaderPosition(i) ? getViewTypeCount() - 1 : this.mBaseAdapter.getItemViewType(sectionedPositionToPosition(i));
    }

    protected View getSectionView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view.findViewById(a.c.card_section_simple_title);
        if (textView != null) {
            textView.setText(this.mCardSections.get(i).title);
        }
        return view;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return isSectionHeaderPosition(i) ? internalSectionView(i, view, viewGroup) : this.mBaseAdapter.getView(sectionedPositionToPosition(i), view, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.mBaseAdapter.getViewTypeCount() + 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.mBaseAdapter.hasStableIds();
    }

    protected View internalSectionView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.mLayoutInflater.inflate(this.mSectionResourceId, viewGroup, false);
        }
        getSectionView(i, view2, viewGroup);
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.mBaseAdapter.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        if (isSectionHeaderPosition(i)) {
            return false;
        }
        return this.mBaseAdapter.isEnabled(sectionedPositionToPosition(i));
    }

    public boolean isSectionHeaderPosition(int i) {
        return this.mCardSections.get(i) != null;
    }

    public int positionToSectionedPosition(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.mCardSections.size() && this.mCardSections.valueAt(i3).firstPosition <= i; i3++) {
            i2++;
        }
        return i + i2;
    }

    public int sectionedPositionToPosition(int i) {
        if (isSectionHeaderPosition(i)) {
            return -1;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.mCardSections.size() && this.mCardSections.valueAt(i3).sectionedPosition <= i; i3++) {
            i2--;
        }
        return i + i2;
    }

    public void setCardSections(CardSection[] cardSectionArr) {
        this.mCardSections.clear();
        Arrays.sort(cardSectionArr, new Comparator<CardSection>() { // from class: it.gmariotti.cardslib.library.prototypes.SectionedCardAdapter.2
            public int compare(CardSection cardSection, CardSection cardSection2) {
                if (cardSection.firstPosition == cardSection2.firstPosition) {
                    return 0;
                }
                return cardSection.firstPosition < cardSection2.firstPosition ? -1 : 1;
            }
        });
        int i = 0;
        for (CardSection cardSection : cardSectionArr) {
            cardSection.sectionedPosition = cardSection.firstPosition + i;
            this.mCardSections.append(cardSection.sectionedPosition, cardSection);
            i++;
        }
        notifyDataSetChanged();
    }
}
