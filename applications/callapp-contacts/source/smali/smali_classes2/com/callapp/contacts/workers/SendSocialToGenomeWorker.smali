.class public final Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->a:Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;

    const-string v0, "job_send_social_to_genome_tag"

    .line 20
    sput-object v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->b:Ljava/lang/String;

    const-string v0, "socialNetIds"

    .line 21
    sput-object v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->c:Ljava/lang/String;

    const/4 v0, 0x5

    .line 22
    sput v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    .line 10
    sget v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->d:I

    return v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 4

    .line 14
    invoke-virtual {p0}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->getInputData()Landroidx/work/d;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->c:Ljava/lang/String;

    .line 1175
    iget-object v0, v0, Landroidx/work/d;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1176
    instance-of v1, v0, [Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1177
    check-cast v0, [Ljava/lang/Integer;

    .line 1178
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 1179
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1180
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    :cond_1
    invoke-static {v1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a([I)V

    .line 1334
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
