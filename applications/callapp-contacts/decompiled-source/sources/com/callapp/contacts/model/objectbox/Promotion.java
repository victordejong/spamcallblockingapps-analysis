package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.util.Activities;
import io.objectbox.converter.PropertyConverter;
import java.util.Date;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Promotion.class */
public class Promotion {
    private int currentNumberToGetGift;
    private Date expiredDate;
    private long id;
    private int numberOfGift;
    private int numberOfUsedGift;
    private int numberToGetGift;
    private ProductType typeOfGift;
    private ProductType typeToBuyToGetGift;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Promotion$ProductType.class */
    public enum ProductType {
        COVER("cover", Activities.getString(2131887452)),
        BUNDLE("bundle", Activities.getString(2131887450)),
        CALL_SCREEN("call_screen", Activities.getString(2131887451)),
        THEME("theme", Activities.getString(2131887455)),
        SUPER_SKIN("super_skin", Activities.getString(2131887454)),
        KEYPAD("keypad", Activities.getString(2131887453));
        
        private String title;
        private String type;

        ProductType(String str, String str2) {
            this.type = str;
            this.title = str2;
        }

        public final String getTitle() {
            return this.title;
        }

        public final String getType() {
            return this.type;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/Promotion$ProductTypeConverter.class */
    static class ProductTypeConverter implements PropertyConverter<ProductType, Integer> {
        public Integer convertToDatabaseValue(ProductType productType) {
            if (productType == null) {
                return null;
            }
            return Integer.valueOf(productType.ordinal());
        }

        public ProductType convertToEntityProperty(Integer num) {
            ProductType[] values;
            if (num == null) {
                return null;
            }
            for (ProductType productType : ProductType.values()) {
                if (productType.ordinal() == num.intValue()) {
                    return productType;
                }
            }
            return ProductType.COVER;
        }
    }

    public Promotion() {
    }

    public Promotion(Date date, int i, int i2, ProductType productType, int i3, ProductType productType2) {
        this.numberToGetGift = i;
        this.currentNumberToGetGift = i2;
        this.typeToBuyToGetGift = productType;
        this.numberOfGift = i3;
        this.typeOfGift = productType2;
        this.expiredDate = date;
    }

    public Promotion(Date date, int i, int i2, ProductType productType, int i3, ProductType productType2, long j) {
        this.expiredDate = date;
        this.numberToGetGift = i;
        this.currentNumberToGetGift = i2;
        this.typeToBuyToGetGift = productType;
        this.numberOfGift = i3;
        this.typeOfGift = productType2;
        this.id = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Promotion promotion = (Promotion) obj;
        return this.id == promotion.id && this.numberToGetGift == promotion.numberToGetGift && this.currentNumberToGetGift == promotion.currentNumberToGetGift && this.numberOfGift == promotion.numberOfGift && this.numberOfUsedGift == promotion.numberOfUsedGift && this.typeToBuyToGetGift == promotion.typeToBuyToGetGift && Objects.equals(this.expiredDate, promotion.expiredDate) && this.typeOfGift == promotion.typeOfGift;
    }

    public int getCurrentNumberToGetGift() {
        return this.currentNumberToGetGift;
    }

    public Date getExpiredDate() {
        return this.expiredDate;
    }

    public long getId() {
        return this.id;
    }

    public int getNumberOfGift() {
        return this.numberOfGift;
    }

    public int getNumberOfUsedGift() {
        return this.numberOfUsedGift;
    }

    public int getNumberToGetGift() {
        return this.numberToGetGift;
    }

    public ProductType getTypeOfGift() {
        return this.typeOfGift;
    }

    public ProductType getTypeToBuyToGetGift() {
        return this.typeToBuyToGetGift;
    }

    public int hashCode() {
        long j = this.id;
        int i = (int) (j ^ (j >>> 32));
        int i2 = this.numberToGetGift;
        int i3 = this.currentNumberToGetGift;
        ProductType productType = this.typeToBuyToGetGift;
        int i4 = 0;
        int hashCode = productType != null ? productType.hashCode() : 0;
        int i5 = this.numberOfGift;
        int i6 = this.numberOfUsedGift;
        Date date = this.expiredDate;
        int hashCode2 = date != null ? date.hashCode() : 0;
        ProductType productType2 = this.typeOfGift;
        if (productType2 != null) {
            i4 = productType2.hashCode();
        }
        return (((((((((((((i * 31) + i2) * 31) + i3) * 31) + hashCode) * 31) + i5) * 31) + i6) * 31) + hashCode2) * 31) + i4;
    }

    public void incrementCurrentProductNumber() {
        this.currentNumberToGetGift++;
    }

    public void setCurrentNumberToGetGift(int i) {
        this.currentNumberToGetGift = i;
    }

    public void setExpiredDate(Date date) {
        this.expiredDate = date;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setNumberOfGift(int i) {
        this.numberOfGift = i;
    }

    public void setNumberOfUsedGift(int i) {
        this.numberOfUsedGift = i;
    }

    public void setNumberToGetGift(int i) {
        this.numberToGetGift = i;
    }

    public void setTypeOfGift(ProductType productType) {
        this.typeOfGift = productType;
    }

    public void setTypeToBuyToGetGift(ProductType productType) {
        this.typeToBuyToGetGift = productType;
    }

    public String toString() {
        return "Promotion{id=" + this.id + ", numberToGetGift=" + this.numberToGetGift + ", currentNumberToGetGift=" + this.currentNumberToGetGift + ", typeToBuyToGetGift=" + this.typeToBuyToGetGift + ", numberOfGift=" + this.numberOfGift + ", numberOfUsedGift=" + this.numberOfUsedGift + ", expiredDate=" + this.expiredDate + ", typeOfGift=" + this.typeOfGift + '}';
    }
}
