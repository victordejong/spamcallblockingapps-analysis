.class public Ld2/f1$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1$e;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ld2/t0;

.field public final synthetic c:Ld2/f1$e;


# direct methods
.method public constructor <init>(Ld2/f1$e;Landroid/content/Context;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$e$a;->c:Ld2/f1$e;

    iput-object p2, p0, Ld2/f1$e$a;->a:Landroid/content/Context;

    iput-object p3, p0, Ld2/f1$e$a;->b:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/f1$e$a;->c:Ld2/f1$e;

    iget-object v0, v0, Ld2/f1$e;->a:Ld2/f1;

    iget-object v1, p0, Ld2/f1$e$a;->a:Landroid/content/Context;

    iget-object v2, p0, Ld2/f1$e$a;->b:Ld2/t0;

    invoke-virtual {v0, v1, v2}, Ld2/f1;->i(Landroid/content/Context;Ld2/t0;)Z

    return-void
.end method
