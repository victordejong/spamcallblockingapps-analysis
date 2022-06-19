.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;
.super Landroidx/d/a/a;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 777
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c$1;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c$1;-><init>()V

    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 760
    invoke-direct {p0, p1, p2}, Landroidx/d/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 761
    if-nez p2, :cond_0

    .line 762
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 764
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 765
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0, p1}, Landroidx/d/a/a;-><init>(Landroid/os/Parcelable;)V

    .line 757
    return-void
.end method

.method private a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;->a:Landroid/os/Bundle;

    .line 775
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 769
    invoke-super {p0, p1, p2}, Landroidx/d/a/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 770
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 771
    return-void
.end method
