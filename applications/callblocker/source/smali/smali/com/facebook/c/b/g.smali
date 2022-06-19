.class public final Lcom/facebook/c/b/g;
.super Lcom/facebook/c/b/a;
.source "ShareOpenGraphContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/c/b/a",
        "<",
        "Lcom/facebook/c/b/g;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/c/b/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/c/b/f;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/facebook/c/b/g$1;

    invoke-direct {v0}, Lcom/facebook/c/b/g$1;-><init>()V

    sput-object v0, Lcom/facebook/c/b/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/c/b/a;-><init>(Landroid/os/Parcel;)V

    .line 47
    new-instance v0, Lcom/facebook/c/b/f$a;

    invoke-direct {v0}, Lcom/facebook/c/b/f$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/c/b/f$a;->a(Landroid/os/Parcel;)Lcom/facebook/c/b/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/c/b/f$a;->a()Lcom/facebook/c/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/b/g;->a:Lcom/facebook/c/b/f;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/b/g;->b:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public c()Lcom/facebook/c/b/f;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/c/b/g;->a:Lcom/facebook/c/b/f;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/facebook/c/b/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    iget-object v0, p0, Lcom/facebook/c/b/g;->a:Lcom/facebook/c/b/f;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    iget-object v0, p0, Lcom/facebook/c/b/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
