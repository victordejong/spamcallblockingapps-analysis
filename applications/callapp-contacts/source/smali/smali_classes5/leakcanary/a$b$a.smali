.class final Lleakcanary/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/a$b;->apply(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lleakcanary/a$b;

.field final synthetic b:Landroid/app/Application;


# direct methods
.method constructor <init>(Lleakcanary/a$b;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/a$b$a;->a:Lleakcanary/a$b;

    iput-object p2, p0, Lleakcanary/a$b$a;->b:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Could not fix the "

    .line 354
    :try_start_0
    iget-object v1, p0, Lleakcanary/a$b$a;->b:Landroid/app/Application;

    const-string v2, "activity"

    .line 355
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mContext"

    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "application\n            \u2026DeclaredField(\"mContext\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 359
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 360
    sget-object v2, Ld/a;->a:Ld/a;

    .line 787
    invoke-static {}, Ld/a;->a()Ld/a$a;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 360
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lleakcanary/a$b$a;->a:Lleakcanary/a$b;

    invoke-virtual {v3}, Lleakcanary/a$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " leak, contextField="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 368
    :cond_1
    sget-object v0, Lleakcanary/a;->Companion:Lleakcanary/a$e;

    iget-object v0, p0, Lleakcanary/a$b$a;->b:Landroid/app/Application;

    new-instance v2, Lleakcanary/a$b$a$1;

    invoke-direct {v2, p0, v1}, Lleakcanary/a$b$a$1;-><init>(Lleakcanary/a$b$a;Ljava/lang/reflect/Field;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Lleakcanary/a$e;->a(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V

    return-void

    :catch_0
    nop

    .line 364
    sget-object v1, Ld/a;->a:Ld/a;

    .line 790
    invoke-static {}, Ld/a;->a()Ld/a$a;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 364
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lleakcanary/a$b$a;->a:Lleakcanary/a$b;

    invoke-virtual {v0}, Lleakcanary/a$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " leak"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
