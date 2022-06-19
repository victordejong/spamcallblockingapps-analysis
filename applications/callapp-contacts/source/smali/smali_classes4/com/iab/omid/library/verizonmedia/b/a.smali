.class public final Lcom/iab/omid/library/verizonmedia/b/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/iab/omid/library/verizonmedia/b/a;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iab/omid/library/verizonmedia/adsession/k;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iab/omid/library/verizonmedia/adsession/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iab/omid/library/verizonmedia/b/a;

    invoke-direct {v0}, Lcom/iab/omid/library/verizonmedia/b/a;-><init>()V

    sput-object v0, Lcom/iab/omid/library/verizonmedia/b/a;->c:Lcom/iab/omid/library/verizonmedia/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/verizonmedia/b/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/verizonmedia/b/a;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/iab/omid/library/verizonmedia/b/a;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/verizonmedia/b/a;->c:Lcom/iab/omid/library/verizonmedia/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/iab/omid/library/verizonmedia/adsession/k;)V
    .locals 2

    invoke-virtual {p0}, Lcom/iab/omid/library/verizonmedia/b/a;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/verizonmedia/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iab/omid/library/verizonmedia/b/f;->a()Lcom/iab/omid/library/verizonmedia/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/verizonmedia/b/f;->b()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
