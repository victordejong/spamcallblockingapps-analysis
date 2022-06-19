.class public final Lcom/vk/api/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/l$a;,
        Lcom/vk/api/sdk/l$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0016\u0018\u0000 #2\u00020\u0001:\u0002\"#B\u000f\u0008\u0014\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u001e\u001a\u00020\u00062\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010 \u001a\u00020\u0017H\u0016J\u0008\u0010!\u001a\u00020\u000bH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0011\u0010\u0013\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0008R\u0011\u0010\u001c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKMethodCall;",
        "",
        "b",
        "Lcom/vk/api/sdk/VKMethodCall$Builder;",
        "(Lcom/vk/api/sdk/VKMethodCall$Builder;)V",
        "allowNoAuth",
        "",
        "getAllowNoAuth",
        "()Z",
        "args",
        "",
        "",
        "getArgs",
        "()Ljava/util/Map;",
        "ignoreExecuteErrors",
        "",
        "getIgnoreExecuteErrors",
        "()[I",
        "isAwaitNetwork",
        "method",
        "getMethod",
        "()Ljava/lang/String;",
        "retryCount",
        "",
        "getRetryCount",
        "()I",
        "skipValidation",
        "getSkipValidation",
        "version",
        "getVersion",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Builder",
        "Companion",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final g:Lcom/vk/api/sdk/l$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z

.field public final f:Z

.field private final h:Z

.field private final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/l$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/l;->g:Lcom/vk/api/sdk/l$b;

    return-void
.end method

.method protected constructor <init>(Lcom/vk/api/sdk/l$a;)V
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iget-object v0, p1, Lcom/vk/api/sdk/l$a;->a:Ljava/lang/String;

    .line 78
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1034
    iget-object v0, p1, Lcom/vk/api/sdk/l$a;->b:Ljava/lang/String;

    .line 79
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2032
    iget-object v0, p1, Lcom/vk/api/sdk/l$a;->a:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/vk/api/sdk/l;->a:Ljava/lang/String;

    .line 2034
    iget-object v0, p1, Lcom/vk/api/sdk/l$a;->b:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/vk/api/sdk/l;->b:Ljava/lang/String;

    .line 2036
    iget-object v0, p1, Lcom/vk/api/sdk/l$a;->c:Ljava/util/Map;

    .line 82
    iput-object v0, p0, Lcom/vk/api/sdk/l;->c:Ljava/util/Map;

    .line 2038
    iget v0, p1, Lcom/vk/api/sdk/l$a;->d:I

    .line 83
    iput v0, p0, Lcom/vk/api/sdk/l;->d:I

    .line 2040
    iget-boolean v0, p1, Lcom/vk/api/sdk/l$a;->e:Z

    .line 84
    iput-boolean v0, p0, Lcom/vk/api/sdk/l;->e:Z

    .line 2042
    iget-boolean v0, p1, Lcom/vk/api/sdk/l$a;->f:Z

    .line 85
    iput-boolean v0, p0, Lcom/vk/api/sdk/l;->h:Z

    .line 2044
    iget-object v0, p1, Lcom/vk/api/sdk/l$a;->g:[I

    .line 86
    iput-object v0, p0, Lcom/vk/api/sdk/l;->i:[I

    .line 2046
    iget-boolean p1, p1, Lcom/vk/api/sdk/l$a;->h:Z

    .line 87
    iput-boolean p1, p0, Lcom/vk/api/sdk/l;->f:Z

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "method is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/vk/api/sdk/l;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.vk.api.sdk.VKMethodCall"

    .line 93
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/vk/api/sdk/l;->a:Ljava/lang/String;

    check-cast p1, Lcom/vk/api/sdk/l;

    iget-object v3, p1, Lcom/vk/api/sdk/l;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v2

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/vk/api/sdk/l;->c:Ljava/util/Map;

    iget-object p1, p1, Lcom/vk/api/sdk/l;->c:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/vk/api/sdk/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/l;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VKMethodCall(method=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vk/api/sdk/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/l;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
