package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.model.objectbox.PromotionCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Promotion_.class */
public final class Promotion_ implements AbstractC17957c<Promotion> {
    public static final C17978g<Promotion>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "Promotion";
    public static final int __ENTITY_ID = 34;
    public static final String __ENTITY_NAME = "Promotion";
    public static final C17978g<Promotion> __ID_PROPERTY;
    public static final Promotion_ __INSTANCE;
    public static final C17978g<Promotion> currentNumberToGetGift;
    public static final C17978g<Promotion> expiredDate;

    /* renamed from: id */
    public static final C17978g<Promotion> f26794id;
    public static final C17978g<Promotion> numberOfGift;
    public static final C17978g<Promotion> numberOfUsedGift;
    public static final C17978g<Promotion> numberToGetGift;
    public static final C17978g<Promotion> typeOfGift;
    public static final C17978g<Promotion> typeToBuyToGetGift;
    public static final Class<Promotion> __ENTITY_CLASS = Promotion.class;
    public static final AbstractC17949b<Promotion> __CURSOR_FACTORY = new PromotionCursor.Factory();
    static final PromotionIdGetter __ID_GETTER = new PromotionIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter.class */
    public static final class PromotionIdGetter implements AbstractC17950c<Promotion> {
        PromotionIdGetter() {
        }

        public final long getId(Promotion promotion) {
            return promotion.getId();
        }
    }

    static {
        Promotion_ promotion_ = new Promotion_();
        __INSTANCE = promotion_;
        C17978g<Promotion> c17978g = new C17978g<>(promotion_, 0, 1, Long.TYPE, "id", true, "id");
        f26794id = c17978g;
        C17978g<Promotion> c17978g2 = new C17978g<>(promotion_, 1, 2, Integer.TYPE, "numberToGetGift");
        numberToGetGift = c17978g2;
        C17978g<Promotion> c17978g3 = new C17978g<>(promotion_, 2, 3, Integer.TYPE, "currentNumberToGetGift");
        currentNumberToGetGift = c17978g3;
        C17978g<Promotion> c17978g4 = new C17978g<>(promotion_, 3, 4, Integer.TYPE, "typeToBuyToGetGift", false, "typeToBuyToGetGift", Promotion.ProductTypeConverter.class, Promotion.ProductType.class);
        typeToBuyToGetGift = c17978g4;
        C17978g<Promotion> c17978g5 = new C17978g<>(promotion_, 4, 5, Integer.TYPE, "numberOfGift");
        numberOfGift = c17978g5;
        C17978g<Promotion> c17978g6 = new C17978g<>(promotion_, 5, 6, Integer.TYPE, "numberOfUsedGift");
        numberOfUsedGift = c17978g6;
        C17978g<Promotion> c17978g7 = new C17978g<>(promotion_, 6, 7, Date.class, "expiredDate");
        expiredDate = c17978g7;
        C17978g<Promotion> c17978g8 = new C17978g<>(promotion_, 7, 8, Integer.TYPE, "typeOfGift", false, "typeOfGift", Promotion.ProductTypeConverter.class, Promotion.ProductType.class);
        typeOfGift = c17978g8;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7, c17978g8};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<Promotion>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<Promotion> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "Promotion";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<Promotion> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 34;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "Promotion";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<Promotion> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<Promotion> getIdProperty() {
        return __ID_PROPERTY;
    }
}
