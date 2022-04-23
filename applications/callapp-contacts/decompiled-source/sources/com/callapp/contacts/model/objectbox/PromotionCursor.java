package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.model.objectbox.Promotion_;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PromotionCursor.class */
public final class PromotionCursor extends Cursor<Promotion> {
    private static final Promotion_.PromotionIdGetter ID_GETTER = Promotion_.__ID_GETTER;
    private static final int __ID_numberToGetGift = Promotion_.numberToGetGift.f36237c;
    private static final int __ID_currentNumberToGetGift = Promotion_.currentNumberToGetGift.f36237c;
    private static final int __ID_typeToBuyToGetGift = Promotion_.typeToBuyToGetGift.f36237c;
    private static final int __ID_numberOfGift = Promotion_.numberOfGift.f36237c;
    private static final int __ID_numberOfUsedGift = Promotion_.numberOfUsedGift.f36237c;
    private static final int __ID_expiredDate = Promotion_.expiredDate.f36237c;
    private static final int __ID_typeOfGift = Promotion_.typeOfGift.f36237c;
    private final Promotion.ProductTypeConverter typeToBuyToGetGiftConverter = new Promotion.ProductTypeConverter();
    private final Promotion.ProductTypeConverter typeOfGiftConverter = new Promotion.ProductTypeConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PromotionCursor$Factory.class */
    static final class Factory implements b<Promotion> {
        @Override // io.objectbox.b.b
        public final Cursor<Promotion> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new PromotionCursor(transaction, j, boxStore);
        }
    }

    public PromotionCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, Promotion_.__INSTANCE, boxStore);
    }

    public final long getId(Promotion promotion) {
        return ID_GETTER.getId(promotion);
    }

    public final long put(Promotion promotion) {
        Date expiredDate = promotion.getExpiredDate();
        int i = expiredDate != null ? __ID_expiredDate : 0;
        Promotion.ProductType typeToBuyToGetGift = promotion.getTypeToBuyToGetGift();
        int i2 = typeToBuyToGetGift != null ? __ID_typeToBuyToGetGift : 0;
        collect004000(this.cursor, 0L, 1, i, i != 0 ? expiredDate.getTime() : 0L, __ID_numberToGetGift, promotion.getNumberToGetGift(), __ID_currentNumberToGetGift, promotion.getCurrentNumberToGetGift(), i2, i2 != 0 ? this.typeToBuyToGetGiftConverter.convertToDatabaseValue(typeToBuyToGetGift).intValue() : 0L);
        Promotion.ProductType typeOfGift = promotion.getTypeOfGift();
        int i3 = typeOfGift != null ? __ID_typeOfGift : 0;
        long collect004000 = collect004000(this.cursor, promotion.getId(), 2, __ID_numberOfGift, promotion.getNumberOfGift(), __ID_numberOfUsedGift, promotion.getNumberOfUsedGift(), i3, i3 != 0 ? this.typeOfGiftConverter.convertToDatabaseValue(typeOfGift).intValue() : 0L, 0, 0L);
        promotion.setId(collect004000);
        return collect004000;
    }
}
