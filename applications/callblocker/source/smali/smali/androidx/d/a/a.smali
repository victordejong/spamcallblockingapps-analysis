.class public abstract Landroidx/d/a/a;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroidx/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Landroidx/d/a/a;


# instance fields
.field private final a:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroidx/d/a/a$1;

    invoke-direct {v0}, Landroidx/d/a/a$1;-><init>()V

    sput-object v0, Landroidx/d/a/a;->c:Landroidx/d/a/a;

    .line 88
    new-instance v0, Landroidx/d/a/a$2;

    invoke-direct {v0}, Landroidx/d/a/a$2;-><init>()V

    sput-object v0, Landroidx/d/a/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/d/a/a;->a:Landroid/os/Parcelable;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Landroidx/d/a/a;->a:Landroid/os/Parcelable;

    .line 71
    return-void

    .line 70
    :cond_0
    sget-object v0, Landroidx/d/a/a;->c:Landroidx/d/a/a;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "superState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    sget-object v0, Landroidx/d/a/a;->c:Landroidx/d/a/a;

    if-eq p1, v0, :cond_1

    :goto_0
    iput-object p1, p0, Landroidx/d/a/a;->a:Landroid/os/Parcelable;

    .line 51
    return-void

    .line 50
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroidx/d/a/a$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroidx/d/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroidx/d/a/a;->a:Landroid/os/Parcelable;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroidx/d/a/a;->a:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    return-void
.end method
