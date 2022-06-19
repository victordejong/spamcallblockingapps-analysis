.class public final enum Lcom/facebook/login/i;
.super Ljava/lang/Enum;
.source "LoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/login/i;

.field public static final enum b:Lcom/facebook/login/i;

.field public static final enum c:Lcom/facebook/login/i;

.field public static final enum d:Lcom/facebook/login/i;

.field public static final enum e:Lcom/facebook/login/i;

.field public static final enum f:Lcom/facebook/login/i;

.field public static final enum g:Lcom/facebook/login/i;

.field private static final synthetic n:[Lcom/facebook/login/i;


# instance fields
.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/facebook/login/i;

    const-string/jumbo v1, "NATIVE_WITH_FALLBACK"

    move v4, v3

    move v5, v3

    move v6, v2

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/login/i;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v0, Lcom/facebook/login/i;->a:Lcom/facebook/login/i;

    .line 37
    new-instance v4, Lcom/facebook/login/i;

    const-string/jumbo v5, "NATIVE_ONLY"

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v3

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/i;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/i;->b:Lcom/facebook/login/i;

    .line 42
    new-instance v4, Lcom/facebook/login/i;

    const-string/jumbo v5, "KATANA_ONLY"

    move v6, v13

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/i;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/i;->c:Lcom/facebook/login/i;

    .line 47
    new-instance v4, Lcom/facebook/login/i;

    const-string/jumbo v5, "WEB_ONLY"

    move v6, v14

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v2

    move v11, v3

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/i;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/i;->d:Lcom/facebook/login/i;

    .line 52
    new-instance v4, Lcom/facebook/login/i;

    const-string/jumbo v5, "WEB_VIEW_ONLY"

    move v6, v15

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/i;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/i;->e:Lcom/facebook/login/i;

    .line 57
    new-instance v4, Lcom/facebook/login/i;

    const-string/jumbo v5, "DIALOG_ONLY"

    const/4 v6, 0x5

    move v7, v2

    move v8, v3

    move v9, v3

    move v10, v2

    move v11, v3

    move v12, v3

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/i;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/i;->f:Lcom/facebook/login/i;

    .line 64
    new-instance v4, Lcom/facebook/login/i;

    const-string/jumbo v5, "DEVICE_AUTH"

    const/4 v6, 0x6

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v3

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/i;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/i;->g:Lcom/facebook/login/i;

    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/login/i;

    sget-object v1, Lcom/facebook/login/i;->a:Lcom/facebook/login/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/login/i;->b:Lcom/facebook/login/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/i;->c:Lcom/facebook/login/i;

    aput-object v1, v0, v13

    sget-object v1, Lcom/facebook/login/i;->d:Lcom/facebook/login/i;

    aput-object v1, v0, v14

    sget-object v1, Lcom/facebook/login/i;->e:Lcom/facebook/login/i;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/login/i;->f:Lcom/facebook/login/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/login/i;->g:Lcom/facebook/login/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/login/i;->n:[Lcom/facebook/login/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-boolean p3, p0, Lcom/facebook/login/i;->h:Z

    .line 81
    iput-boolean p4, p0, Lcom/facebook/login/i;->i:Z

    .line 82
    iput-boolean p5, p0, Lcom/facebook/login/i;->j:Z

    .line 83
    iput-boolean p6, p0, Lcom/facebook/login/i;->k:Z

    .line 84
    iput-boolean p7, p0, Lcom/facebook/login/i;->l:Z

    .line 85
    iput-boolean p8, p0, Lcom/facebook/login/i;->m:Z

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/i;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/login/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/i;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/i;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/login/i;->n:[Lcom/facebook/login/i;

    invoke-virtual {v0}, [Lcom/facebook/login/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/i;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/facebook/login/i;->h:Z

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/facebook/login/i;->i:Z

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/facebook/login/i;->j:Z

    return v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/facebook/login/i;->k:Z

    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/facebook/login/i;->l:Z

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/facebook/login/i;->m:Z

    return v0
.end method
