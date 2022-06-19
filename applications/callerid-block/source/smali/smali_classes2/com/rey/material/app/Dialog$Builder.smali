.class public Lcom/rey/material/app/Dialog$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rey/material/app/a$b;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/app/Dialog;
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
            "Lcom/rey/material/app/Dialog$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:I

.field protected c:I

.field protected d:Ljava/lang/CharSequence;

.field protected e:Ljava/lang/CharSequence;

.field protected f:Ljava/lang/CharSequence;

.field protected g:Ljava/lang/CharSequence;

.field protected h:Lcom/rey/material/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rey/material/app/Dialog$Builder$a;

    invoke-direct {v0}, Lcom/rey/material/app/Dialog$Builder$a;-><init>()V

    sput-object v0, Lcom/rey/material/app/Dialog$Builder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f110102

    invoke-direct {p0, v0}, Lcom/rey/material/app/Dialog$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rey/material/app/Dialog$Builder;->b:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rey/material/app/Dialog$Builder;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rey/material/app/Dialog$Builder;->c:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->d:Ljava/lang/CharSequence;

    const-class v0, Lcom/rey/material/app/Dialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->g:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->l(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/fragment/app/b;->E1()V

    return-void
.end method

.method public b(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/fragment/app/b;->E1()V

    return-void
.end method

.method public c(Landroid/content/Context;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget v0, p0, Lcom/rey/material/app/Dialog$Builder;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/rey/material/app/Dialog$Builder;->h(Landroid/content/Context;I)Lcom/rey/material/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/rey/material/app/Dialog$Builder;->h:Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->u0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->j0(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->P(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->Y(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog;

    iget p1, p0, Lcom/rey/material/app/Dialog$Builder;->c:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->h:Lcom/rey/material/app/Dialog;

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog;->z(I)Lcom/rey/material/app/Dialog;

    :cond_0
    iget-object p1, p0, Lcom/rey/material/app/Dialog$Builder;->h:Lcom/rey/material/app/Dialog;

    invoke-virtual {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->i(Lcom/rey/material/app/Dialog;)V

    iget-object p1, p0, Lcom/rey/material/app/Dialog$Builder;->h:Lcom/rey/material/app/Dialog;

    return-object p1
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/fragment/app/b;->E1()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(I)Lcom/rey/material/app/Dialog$Builder;
    .locals 0

    iput p1, p0, Lcom/rey/material/app/Dialog$Builder;->c:I

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/Dialog$Builder;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected h(Landroid/content/Context;I)Lcom/rey/material/app/Dialog;
    .locals 1

    new-instance v0, Lcom/rey/material/app/Dialog;

    invoke-direct {v0, p1, p2}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 0

    return-void
.end method

.method protected l(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method protected m(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method

.method public n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/Dialog$Builder;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/Dialog$Builder;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/rey/material/app/Dialog$Builder;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/rey/material/app/Dialog$Builder;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rey/material/app/Dialog$Builder;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/rey/material/app/Dialog$Builder;->m(Landroid/os/Parcel;I)V

    return-void
.end method
