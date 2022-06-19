.class public final Lio/opencensus/trace/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final c:Lio/opencensus/trace/x;


# instance fields
.field private final a:Lio/opencensus/trace/x;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/opencensus/trace/x;->a(Ljava/util/List;)Lio/opencensus/trace/x;

    move-result-object v0

    sput-object v0, Lio/opencensus/trace/x$a;->c:Lio/opencensus/trace/x;

    return-void
.end method

.method private constructor <init>(Lio/opencensus/trace/x;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "parent"

    .line 112
    invoke-static {p1, v0}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iput-object p1, p0, Lio/opencensus/trace/x$a;->a:Lio/opencensus/trace/x;

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lio/opencensus/trace/x$a;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lio/opencensus/trace/x;Lio/opencensus/trace/x$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lio/opencensus/trace/x$a;-><init>(Lio/opencensus/trace/x;)V

    return-void
.end method

.method static synthetic b()Lio/opencensus/trace/x;
    .locals 1

    .line 103
    sget-object v0, Lio/opencensus/trace/x$a;->c:Lio/opencensus/trace/x;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/opencensus/trace/x;
    .locals 1

    .line 178
    iget-object v0, p0, Lio/opencensus/trace/x$a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lio/opencensus/trace/x$a;->a:Lio/opencensus/trace/x;

    return-object v0

    .line 181
    :cond_0
    invoke-static {v0}, Lio/opencensus/trace/x;->a(Ljava/util/List;)Lio/opencensus/trace/x;

    move-result-object v0

    return-object v0
.end method
