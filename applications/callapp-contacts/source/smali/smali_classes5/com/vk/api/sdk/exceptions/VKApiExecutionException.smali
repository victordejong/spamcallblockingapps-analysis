.class public Lcom/vk/api/sdk/exceptions/VKApiExecutionException;
.super Lcom/vk/api/sdk/exceptions/VKApiException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/exceptions/VKApiExecutionException$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 B2\u00020\u0001:\u0001BBi\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010:\u001a\u00020\u00072\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0096\u0002J\u000e\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0003J\u0006\u0010?\u001a\u00020\u0007J\u0008\u0010@\u001a\u00020\u0003H\u0016J\u0008\u0010A\u001a\u00020\u0005H\u0016R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\u0015\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0013R\u0011\u0010\u0017\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0013R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013R\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010$R\u0011\u0010&\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010$R\u0011\u0010\'\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010$R\u0011\u0010(\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010$R\u0011\u0010)\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010$R\u0011\u0010*\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010$R\u0011\u0010+\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010$R\u0011\u0010,\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010$R\u0011\u0010-\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010$R\u0011\u0010.\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010$R\u0011\u0010/\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010$R\u001f\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u0013\u00102\u001a\u0004\u0018\u0001038F\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0011\u00106\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u0013R\u0011\u00108\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u0013\u00a8\u0006C"
    }
    d2 = {
        "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;",
        "Lcom/vk/api/sdk/exceptions/VKApiException;",
        "code",
        "",
        "apiMethod",
        "",
        "hasLocalizedMessage",
        "",
        "detailMessage",
        "extra",
        "Landroid/os/Bundle;",
        "executeErrors",
        "",
        "errorMsg",
        "requestParams",
        "",
        "(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V",
        "accessToken",
        "getAccessToken",
        "()Ljava/lang/String;",
        "getApiMethod",
        "captchaImg",
        "getCaptchaImg",
        "captchaSid",
        "getCaptchaSid",
        "getCode",
        "()I",
        "getDetailMessage",
        "getErrorMsg",
        "getExecuteErrors",
        "()Ljava/util/List;",
        "extensionHash",
        "getExtensionHash",
        "getExtra",
        "()Landroid/os/Bundle;",
        "getHasLocalizedMessage",
        "()Z",
        "isAccessError",
        "isCaptchaError",
        "isCompositeError",
        "isInternalServerError",
        "isInvalidCredentialsError",
        "isPasswordConfirmRequired",
        "isRateLimitReachedError",
        "isTokenConfirmationRequired",
        "isTooManyRequestsError",
        "isUserConfirmRequired",
        "isValidationRequired",
        "getRequestParams",
        "()Ljava/util/Map;",
        "userBanInfo",
        "Lorg/json/JSONObject;",
        "getUserBanInfo",
        "()Lorg/json/JSONObject;",
        "userConfirmText",
        "getUserConfirmText",
        "validationUrl",
        "getValidationUrl",
        "equals",
        "other",
        "",
        "hasError",
        "errorCode",
        "hasExtra",
        "hashCode",
        "toString",
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
.field public static final e:Lcom/vk/api/sdk/exceptions/VKApiExecutionException$a;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/Bundle;

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->e:Lcom/vk/api/sdk/exceptions/VKApiExecutionException$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xe0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apiMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailMessage"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p4}, Lcom/vk/api/sdk/exceptions/VKApiException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    iput-object p2, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->f:Z

    iput-object p4, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->h:Ljava/util/List;

    iput-object p7, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->j:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 44
    invoke-direct/range {v2 .. v10}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 81
    iget v0, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1a

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 133
    move-object v0, p0

    check-cast v0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 134
    :cond_0
    instance-of v0, p1, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 135
    :cond_1
    check-cast p1, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    .line 136
    iget v0, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    iget v3, p1, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 140
    iget v0, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget-object v1, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 147
    iget-object v0, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v2, "hidden"

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->d:Landroid/os/Bundle;

    .line 153
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VKApiExecutionException{code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    iget v2, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", method="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v0, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", executeErrors="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v0, p0, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const/4 v3, 0x0

    const-string v0, "["

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "]"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x39

    invoke-static/range {v2 .. v9}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", super="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-super {p0}, Lcom/vk/api/sdk/exceptions/VKApiException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
