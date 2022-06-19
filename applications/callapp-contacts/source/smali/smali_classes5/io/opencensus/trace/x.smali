.class public abstract Lio/opencensus/trace/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/x$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Lio/opencensus/trace/x;
    .locals 2

    .line 1268
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1269
    new-instance v0, Lio/opencensus/trace/g;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/opencensus/trace/g;-><init>(Ljava/util/List;)V

    return-object v0

    .line 2081
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lio/opencensus/trace/x$a;
    .locals 3

    .line 84
    new-instance v0, Lio/opencensus/trace/x$a;

    invoke-static {}, Lio/opencensus/trace/x$a;->b()Lio/opencensus/trace/x;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/trace/x$a;-><init>(Lio/opencensus/trace/x;Lio/opencensus/trace/x$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
