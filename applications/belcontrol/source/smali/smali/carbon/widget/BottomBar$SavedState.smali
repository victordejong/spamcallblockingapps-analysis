.class public Lcarbon/widget/BottomBar$SavedState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/BottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcarbon/widget/BottomBar$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcarbon/widget/BottomBar$SavedState;


# instance fields
.field public a:I

.field public b:Landroid/os/Parcelable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcarbon/widget/BottomBar$SavedState$1;

    invoke-direct {v0}, Lcarbon/widget/BottomBar$SavedState$1;-><init>()V

    sput-object v0, Lcarbon/widget/BottomBar$SavedState;->c:Lcarbon/widget/BottomBar$SavedState;

    new-instance v0, Lcarbon/widget/BottomBar$SavedState$a;

    invoke-direct {v0}, Lcarbon/widget/BottomBar$SavedState$a;-><init>()V

    sput-object v0, Lcarbon/widget/BottomBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcarbon/widget/BottomBar$SavedState;->b:Landroid/os/Parcelable;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcarbon/widget/BottomBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcarbon/widget/BottomBar$SavedState;->c:Lcarbon/widget/BottomBar$SavedState;

    :goto_0
    iput-object v0, p0, Lcarbon/widget/BottomBar$SavedState;->b:Landroid/os/Parcelable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcarbon/widget/BottomBar$SavedState;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcarbon/widget/BottomBar$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/BottomBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcarbon/widget/BottomBar$SavedState;->c:Lcarbon/widget/BottomBar$SavedState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcarbon/widget/BottomBar$SavedState;->b:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/BottomBar$SavedState;->b:Landroid/os/Parcelable;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/BottomBar$SavedState;->b:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcarbon/widget/BottomBar$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
