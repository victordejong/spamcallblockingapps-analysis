.class public Lcom/google/android/gms/common/internal/safeparcel/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# direct methods
.method public static a(Landroid/os/Parcel;)I
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    .line 19
    return-void
.end method

.method public static a(Landroid/os/Parcel;IF)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 68
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 69
    return-void
.end method

.method public static a(Landroid/os/Parcel;II)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 40
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method

.method public static a(Landroid/os/Parcel;IJ)V
    .locals 2

    .prologue
    .line 49
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 50
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 1

    .prologue
    .line 120
    if-nez p2, :cond_1

    .line 121
    if-eqz p3, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 125
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 126
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 1

    .prologue
    .line 104
    if-nez p2, :cond_1

    .line 105
    if-eqz p3, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 109
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 110
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 1

    .prologue
    .line 112
    if-nez p2, :cond_1

    .line 113
    if-eqz p4, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 117
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p2, :cond_1

    .line 24
    if-eqz p3, :cond_0

    .line 25
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 28
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Double;Z)V
    .locals 2

    .prologue
    .line 80
    if-nez p2, :cond_1

    .line 81
    if-eqz p3, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .locals 1

    .prologue
    .line 70
    if-nez p2, :cond_1

    .line 71
    if-eqz p3, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 75
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .locals 2

    .prologue
    .line 52
    if-nez p2, :cond_1

    .line 53
    if-eqz p3, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 57
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 96
    if-nez p2, :cond_1

    .line 97
    if-eqz p3, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 101
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 249
    if-nez p2, :cond_1

    .line 250
    if-eqz p3, :cond_0

    .line 251
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v2

    .line 254
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 255
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    .line 256
    :goto_1
    if-ge v1, v3, :cond_2

    .line 257
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 259
    :cond_2
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;IZ)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 21
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;I[BZ)V
    .locals 1

    .prologue
    .line 128
    if-nez p2, :cond_1

    .line 129
    if-eqz p3, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 133
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 134
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 313
    if-nez p2, :cond_1

    .line 314
    if-eqz p4, :cond_0

    .line 315
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v2

    .line 318
    array-length v3, p2

    .line 319
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 320
    :goto_1
    if-ge v0, v3, :cond_3

    .line 321
    aget-object v4, p2, v0

    .line 322
    if-nez v4, :cond_2

    .line 323
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    :cond_2
    invoke-static {p0, v4, p3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 326
    :cond_3
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 221
    if-nez p2, :cond_1

    .line 222
    if-eqz p3, :cond_0

    .line 223
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 226
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 227
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private static a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 344
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 346
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 348
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 349
    sub-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 351
    return-void
.end method

.method private static b(Landroid/os/Parcel;I)I
    .locals 1

    .prologue
    .line 8
    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    return v0
.end method

.method private static b(Landroid/os/Parcel;II)V
    .locals 1

    .prologue
    .line 3
    const v0, 0xffff

    if-lt p2, v0, :cond_0

    .line 4
    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    :goto_0
    return-void

    .line 6
    :cond_0
    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static b(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 297
    if-nez p2, :cond_1

    .line 298
    if-eqz p3, :cond_0

    .line 299
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v0

    .line 302
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 303
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method private static c(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 12
    sub-int v1, v0, p1

    .line 13
    add-int/lit8 v2, p1, -0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 16
    return-void
.end method

.method public static c(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 328
    if-nez p2, :cond_1

    .line 329
    if-eqz p3, :cond_0

    .line 330
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)I

    move-result v3

    .line 333
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 334
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 335
    :goto_1
    if-ge v1, v4, :cond_3

    .line 336
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 337
    if-nez v0, :cond_2

    .line 338
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 339
    :cond_2
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_2

    .line 341
    :cond_3
    invoke-static {p0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
