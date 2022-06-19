.class public Landroidx/recyclerview/widget/RecyclerView$s;
.super Landroidx/d/a/a;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/recyclerview/widget/RecyclerView$s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12334
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$s$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$s$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 12312
    invoke-direct {p0, p1, p2}, Landroidx/d/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 12313
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:Landroid/os/Parcelable;

    .line 12315
    return-void

    .line 12313
    :cond_0
    const-class v0, Landroidx/recyclerview/widget/RecyclerView$i;

    .line 12314
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 12321
    invoke-direct {p0, p1}, Landroidx/d/a/a;-><init>(Landroid/os/Parcelable;)V

    .line 12322
    return-void
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 1

    .prologue
    .line 12331
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$s;->a:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:Landroid/os/Parcelable;

    .line 12332
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 12326
    invoke-super {p0, p1, p2}, Landroidx/d/a/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12327
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12328
    return-void
.end method
