package it.gmariotti.cardslib.library.prototypes;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/prototypes/CardSection.class */
public class CardSection {
    int firstPosition;
    int sectionedPosition;
    CharSequence title;

    public CardSection(int i, CharSequence charSequence) {
        this.firstPosition = i;
        this.title = charSequence;
    }

    public CharSequence getTitle() {
        return this.title;
    }
}
