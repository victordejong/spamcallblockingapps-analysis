.class public final synthetic Lcom/criteo/publisher/-$$Lambda$2CCxpHXvM5iil9DZq2w2-5fo6_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/criteo/publisher/q$a;


# static fields
.field public static final synthetic INSTANCE:Lcom/criteo/publisher/-$$Lambda$2CCxpHXvM5iil9DZq2w2-5fo6_g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/criteo/publisher/-$$Lambda$2CCxpHXvM5iil9DZq2w2-5fo6_g;

    invoke-direct {v0}, Lcom/criteo/publisher/-$$Lambda$2CCxpHXvM5iil9DZq2w2-5fo6_g;-><init>()V

    sput-object v0, Lcom/criteo/publisher/-$$Lambda$2CCxpHXvM5iil9DZq2w2-5fo6_g;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$2CCxpHXvM5iil9DZq2w2-5fo6_g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
