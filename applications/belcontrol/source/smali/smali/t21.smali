.class public final enum Lt21;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lk01;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt21;",
        ">;",
        "Lk01;"
    }
.end annotation


# static fields
.field public static final enum d:Lt21;

.field public static final enum f:Lt21;

.field public static final enum g:Lt21;

.field public static final enum h:Lt21;

.field public static final synthetic j:[Lt21;


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Lt21;

    const-string v1, "CUSTOM_CALL_SCREEN"

    const/4 v2, 0x0

    const v3, 0x7f11022f

    const v4, 0x7f110230

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lt21;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lt21;->d:Lt21;

    new-instance v0, Lt21;

    const-string v8, "ENHANCED_CALLER_ID"

    const/4 v9, 0x1

    const v10, 0x7f1102d6

    const v11, 0x7f1102d7

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lt21;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lt21;->f:Lt21;

    new-instance v1, Lt21;

    const-string v14, "CALLER_ID_OVERLAY"

    const/4 v15, 0x2

    const v16, 0x7f110199

    const v17, 0x7f11019a

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lt21;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lt21;->g:Lt21;

    new-instance v2, Lt21;

    const-string v8, "MISSED_CALL_OVERLAY"

    const/4 v9, 0x3

    const v10, 0x7f110486

    const v11, 0x7f110487

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lt21;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v2, Lt21;->h:Lt21;

    const/4 v3, 0x4

    new-array v3, v3, [Lt21;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Lt21;->j:[Lt21;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lt21;->a:I

    iput p4, p0, Lt21;->b:I

    iput-boolean p5, p0, Lt21;->c:Z

    return-void
.end method

.method public static e()V
    .locals 3

    invoke-static {}, Lfa1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lt21;->d:Lt21;

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v0, Lt21;->d:Lt21;

    sget-object v1, Lr71$a;->v:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    :goto_0
    iput-boolean v1, v0, Lt21;->c:Z

    sget-object v0, Lt21;->f:Lt21;

    invoke-static {}, Lr71;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lr71$a;->k:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lt21;->c:Z

    sget-object v0, Lt21;->d:Lt21;

    iget-boolean v0, v0, Lt21;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lt21;->g:Lt21;

    iput-boolean v2, v0, Lt21;->c:Z

    sget-object v0, Lr71$a;->j:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lt21;->g:Lt21;

    invoke-static {}, Lr71;->g()Z

    move-result v1

    iput-boolean v1, v0, Lt21;->c:Z

    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_3

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lt21;->h:Lt21;

    iput-boolean v2, v0, Lt21;->c:Z

    sget-object v0, Lr71$a;->u:Lr71$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr71$a;->k(Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_3
    sget-object v0, Lt21;->h:Lt21;

    sget-object v1, Lr71$a;->u:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    iput-boolean v1, v0, Lt21;->c:Z

    :goto_3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt21;
    .locals 1

    const-class v0, Lt21;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt21;

    return-object p0
.end method

.method public static values()[Lt21;
    .locals 1

    sget-object v0, Lt21;->j:[Lt21;

    invoke-virtual {v0}, [Lt21;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt21;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lt21;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lt21;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lt21;->b:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    iget v0, p0, Lt21;->a:I

    return v0
.end method
