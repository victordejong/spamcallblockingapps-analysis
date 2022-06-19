.class final Lleakcanary/a$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/a$j;->apply(Landroid/app/Application;)V
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
.field final synthetic a:Lleakcanary/a$j;

.field final synthetic b:Landroid/app/Application;


# direct methods
.method constructor <init>(Lleakcanary/a$j;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/a$j$a;->a:Lleakcanary/a$j;

    iput-object p2, p0, Lleakcanary/a$j$a;->b:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 320
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mLastHoveredView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "TextView::class.java.get\u2026Field(\"mLastHoveredView\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    sget-object v1, Lleakcanary/a;->Companion:Lleakcanary/a$e;

    iget-object v1, p0, Lleakcanary/a$j$a;->b:Landroid/app/Application;

    new-instance v2, Lleakcanary/a$j$a$1;

    invoke-direct {v2, p0, v0}, Lleakcanary/a$j$a$1;-><init>(Lleakcanary/a$j$a;Ljava/lang/reflect/Field;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lleakcanary/a$e;->a(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V

    return-void

    :catch_0
    nop

    .line 323
    sget-object v0, Ld/a;->a:Ld/a;

    .line 787
    invoke-static {}, Ld/a;->a()Ld/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not fix the "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lleakcanary/a$j$a;->a:Lleakcanary/a$j;

    invoke-virtual {v1}, Lleakcanary/a$j;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
