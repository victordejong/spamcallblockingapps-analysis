package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.model.objectbox.PromotionCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Promotion_.class */
public final class Promotion_ implements c<Promotion> {
    public static final g<Promotion>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "Promotion";
    public static final int __ENTITY_ID = 34;
    public static final String __ENTITY_NAME = "Promotion";
    public static final g<Promotion> __ID_PROPERTY;
    public static final Promotion_ __INSTANCE;
    public static final g<Promotion> currentNumberToGetGift;
    public static final g<Promotion> expiredDate;
    public static final g<Promotion> id;
    public static final g<Promotion> numberOfGift;
    public static final g<Promotion> numberOfUsedGift;
    public static final g<Promotion> numberToGetGift;
    public static final g<Promotion> typeOfGift;
    public static final g<Promotion> typeToBuyToGetGift;
    public static final Class<Promotion> __ENTITY_CLASS = Promotion.class;
    public static final b<Promotion> __CURSOR_FACTORY = new PromotionCursor.Factory();
    static final PromotionIdGetter __ID_GETTER = new PromotionIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Promotion_$PromotionIdGetter.class */
    static final class PromotionIdGetter implements io.objectbox.b.c<Promotion> {
        PromotionIdGetter() {
        }

        public final long getId(Promotion promotion) {
            return promotion.getId();
        }
    }

    static {
        Promotion_ promotion_ = new Promotion_();
        __INSTANCE = promotion_;
        g<Promotion> gVar = new g<>(promotion_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<Promotion> gVar2 = new g<>(promotion_, 1, 2, Integer.TYPE, "numberToGetGift");
        numberToGetGift = gVar2;
        g<Promotion> gVar3 = new g<>(promotion_, 2, 3, Integer.TYPE, "currentNumberToGetGift");
        currentNumberToGetGift = gVar3;
        g<Promotion> gVar4 = new g<>(promotion_, 3, 4, Integer.TYPE, "typeToBuyToGetGift", false, "typeToBuyToGetGift", Promotion.ProductTypeConverter.class, Promotion.ProductType.class);
        typeToBuyToGetGift = gVar4;
        g<Promotion> gVar5 = new g<>(promotion_, 4, 5, Integer.TYPE, "numberOfGift");
        numberOfGift = gVar5;
        g<Promotion> gVar6 = new g<>(promotion_, 5, 6, Integer.TYPE, "numberOfUsedGift");
        numberOfUsedGift = gVar6;
        g<Promotion> gVar7 = new g<>(promotion_, 6, 7, Date.class, "expiredDate");
        expiredDate = gVar7;
        g<Promotion> gVar8 = new g<>(promotion_, 7, 8, Integer.TYPE, "typeOfGift", false, "typeOfGift", Promotion.ProductTypeConverter.class, Promotion.ProductType.class);
        typeOfGift = gVar8;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<Promotion>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<Promotion> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "Promotion";
    }

    @Override // io.objectbox.c
    public final Class<Promotion> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 34;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "Promotion";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<Promotion> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<Promotion> getIdProperty() {
        return __ID_PROPERTY;
    }
}
