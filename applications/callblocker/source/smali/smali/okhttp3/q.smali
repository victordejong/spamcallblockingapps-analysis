.class public final Lokhttp3/q;
.super Lokhttp3/ab;
.source "FormBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/q$a;
    }
.end annotation


# static fields
.field private static final a:Lokhttp3/v;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    .line 32
    invoke-static {v0}, Lokhttp3/v;->a(Ljava/lang/String;)Lokhttp3/v;

    move-result-object v0

    sput-object v0, Lokhttp3/q;->a:Lokhttp3/v;

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    .line 38
    invoke-static {p1}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q;->b:Ljava/util/List;

    .line 39
    invoke-static {p2}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/q;->c:Ljava/util/List;

    .line 40
    return-void
.end method

.method private a(La/d;Z)J
    .locals 6
    .param p1    # La/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    const-wide/16 v2, 0x0

    .line 85
    if-eqz p2, :cond_1

    .line 86
    new-instance v0, La/c;

    invoke-direct {v0}, La/c;-><init>()V

    move-object v1, v0

    .line 91
    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lokhttp3/q;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_2

    .line 92
    if-lez v4, :cond_0

    const/16 v0, 0x26

    invoke-virtual {v1, v0}, La/c;->b(I)La/c;

    .line 93
    :cond_0
    iget-object v0, p0, Lokhttp3/q;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, La/c;->a(Ljava/lang/String;)La/c;

    .line 94
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, La/c;->b(I)La/c;

    .line 95
    iget-object v0, p0, Lokhttp3/q;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, La/c;->a(Ljava/lang/String;)La/c;

    .line 91
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 88
    :cond_1
    invoke-interface {p1}, La/d;->c()La/c;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 98
    :cond_2
    if-eqz p2, :cond_3

    .line 99
    invoke-virtual {v1}, La/c;->b()J

    move-result-wide v2

    .line 100
    invoke-virtual {v1}, La/c;->q()V

    :cond_3
    move-wide v0, v2

    .line 103
    return-wide v0
.end method


# virtual methods
.method public a()Lokhttp3/v;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lokhttp3/q;->a:Lokhttp3/v;

    return-object v0
.end method

.method public a(La/d;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/q;->a(La/d;Z)J

    .line 73
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/q;->a(La/d;Z)J

    move-result-wide v0

    return-wide v0
.end method
