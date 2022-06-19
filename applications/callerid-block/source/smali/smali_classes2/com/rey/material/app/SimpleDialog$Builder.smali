.class public Lcom/rey/material/app/SimpleDialog$Builder;
.super Lcom/rey/material/app/Dialog$Builder;
.source ""

# interfaces
.implements Lcom/rey/material/app/SimpleDialog$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/app/SimpleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rey/material/app/SimpleDialog$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected i:I

.field protected j:Ljava/lang/CharSequence;

.field protected k:Landroid/graphics/Typeface;

.field protected l:[Ljava/lang/CharSequence;

.field protected m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rey/material/app/SimpleDialog$Builder$a;

    invoke-direct {v0}, Lcom/rey/material/app/SimpleDialog$Builder$a;-><init>()V

    sput-object v0, Lcom/rey/material/app/SimpleDialog$Builder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f110103

    invoke-direct {p0, v0}, Lcom/rey/material/app/Dialog$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rey/material/app/Dialog$Builder;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rey/material/app/Dialog$Builder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public e(IZ)V
    .locals 2

    iget v0, p0, Lcom/rey/material/app/SimpleDialog$Builder;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rey/material/app/Dialog$Builder;->h:Lcom/rey/material/app/Dialog;

    check-cast p1, Lcom/rey/material/app/SimpleDialog;

    invoke-virtual {p1}, Lcom/rey/material/app/SimpleDialog;->G0()[I

    move-result-object p1

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    new-array p2, p2, [I

    aput p1, p2, v0

    iput-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    goto :goto_0

    :cond_2
    aput p1, p2, v0

    :cond_3
    :goto_0
    return-void
.end method

.method protected h(Landroid/content/Context;I)Lcom/rey/material/app/Dialog;
    .locals 2

    new-instance v0, Lcom/rey/material/app/SimpleDialog;

    invoke-direct {v0, p1, p2}, Lcom/rey/material/app/SimpleDialog;-><init>(Landroid/content/Context;I)V

    iget p1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->i:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    invoke-virtual {v0, p1, p2}, Lcom/rey/material/app/SimpleDialog;->Q0([Ljava/lang/CharSequence;[I)Lcom/rey/material/app/SimpleDialog;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/rey/material/app/SimpleDialog;->R0(Lcom/rey/material/app/SimpleDialog$e;)Lcom/rey/material/app/SimpleDialog;

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    const/4 v1, 0x0

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    aget v1, p2, v1

    :goto_1
    invoke-virtual {v0, p1, v1}, Lcom/rey/material/app/SimpleDialog;->M0([Ljava/lang/CharSequence;I)Lcom/rey/material/app/SimpleDialog;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->j:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->k:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1, p2}, Lcom/rey/material/app/SimpleDialog;->N0(Ljava/lang/CharSequence;Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog;

    :goto_2
    return-object v0
.end method

.method protected l(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rey/material/app/SimpleDialog$Builder;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    :goto_0
    iget-object v1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v3, v2, :cond_2

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v2, v5, :cond_5

    aget-object v5, v0, v2

    check-cast v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iput-object v4, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    :cond_5
    new-array v0, v1, [I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aput p1, v0, v3

    iput-object v0, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->j:Ljava/lang/CharSequence;

    :cond_7
    :goto_2
    return-void
.end method

.method protected m(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->i:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-lez v1, :cond_5

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->l:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->m:[I

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    aget v1, p2, v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/rey/material/app/SimpleDialog$Builder;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/rey/material/app/SimpleDialog$Builder;->i:I

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public q(Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog$Builder;->k:Landroid/graphics/Typeface;

    return-object p0
.end method
