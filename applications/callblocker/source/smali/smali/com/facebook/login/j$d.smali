.class public Lcom/facebook/login/j$d;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/j$d$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/j$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/facebook/login/j$d$a;

.field final b:Lcom/facebook/a;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Lcom/facebook/login/j$c;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 669
    new-instance v0, Lcom/facebook/login/j$d$1;

    invoke-direct {v0}, Lcom/facebook/login/j$d$1;-><init>()V

    sput-object v0, Lcom/facebook/login/j$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/login/j$d$a;->valueOf(Ljava/lang/String;)Lcom/facebook/login/j$d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/j$d;->a:Lcom/facebook/login/j$d$a;

    .line 645
    const-class v0, Lcom/facebook/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/a;

    iput-object v0, p0, Lcom/facebook/login/j$d;->b:Lcom/facebook/a;

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/j$d;->c:Ljava/lang/String;

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/j$d;->d:Ljava/lang/String;

    .line 648
    const-class v0, Lcom/facebook/login/j$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/j$c;

    iput-object v0, p0, Lcom/facebook/login/j$d;->e:Lcom/facebook/login/j$c;

    .line 649
    invoke-static {p1}, Lcom/facebook/internal/x;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/j$d;->f:Ljava/util/Map;

    .line 650
    invoke-static {p1}, Lcom/facebook/internal/x;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/j$d;->g:Ljava/util/Map;

    .line 651
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/login/j$1;)V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/facebook/login/j$d;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/j$c;Lcom/facebook/login/j$d$a;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const-string/jumbo v0, "code"

    invoke-static {p2, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    iput-object p1, p0, Lcom/facebook/login/j$d;->e:Lcom/facebook/login/j$c;

    .line 611
    iput-object p3, p0, Lcom/facebook/login/j$d;->b:Lcom/facebook/a;

    .line 612
    iput-object p4, p0, Lcom/facebook/login/j$d;->c:Ljava/lang/String;

    .line 613
    iput-object p2, p0, Lcom/facebook/login/j$d;->a:Lcom/facebook/login/j$d$a;

    .line 614
    iput-object p5, p0, Lcom/facebook/login/j$d;->d:Ljava/lang/String;

    .line 615
    return-void
.end method

.method static a(Lcom/facebook/login/j$c;Lcom/facebook/a;)Lcom/facebook/login/j$d;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 618
    new-instance v0, Lcom/facebook/login/j$d;

    sget-object v2, Lcom/facebook/login/j$d$a;->a:Lcom/facebook/login/j$d$a;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/j$d;-><init>(Lcom/facebook/login/j$c;Lcom/facebook/login/j$d$a;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Lcom/facebook/login/j$c;Ljava/lang/String;)Lcom/facebook/login/j$d;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 622
    new-instance v0, Lcom/facebook/login/j$d;

    sget-object v2, Lcom/facebook/login/j$d$a;->b:Lcom/facebook/login/j$d$a;

    move-object v1, p0

    move-object v4, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/j$d;-><init>(Lcom/facebook/login/j$c;Lcom/facebook/login/j$d$a;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;
    .locals 6

    .prologue
    .line 637
    const-string/jumbo v0, ": "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 639
    invoke-static {v1}, Lcom/facebook/internal/x;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 637
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 640
    new-instance v0, Lcom/facebook/login/j$d;

    sget-object v2, Lcom/facebook/login/j$d$a;->c:Lcom/facebook/login/j$d$a;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/j$d;-><init>(Lcom/facebook/login/j$c;Lcom/facebook/login/j$d$a;Lcom/facebook/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/facebook/login/j$d;->a:Lcom/facebook/login/j$d$a;

    invoke-virtual {v0}, Lcom/facebook/login/j$d$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/facebook/login/j$d;->b:Lcom/facebook/a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 662
    iget-object v0, p0, Lcom/facebook/login/j$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/facebook/login/j$d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/facebook/login/j$d;->e:Lcom/facebook/login/j$c;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 665
    iget-object v0, p0, Lcom/facebook/login/j$d;->f:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/facebook/internal/x;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 666
    iget-object v0, p0, Lcom/facebook/login/j$d;->g:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/facebook/internal/x;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 667
    return-void
.end method
