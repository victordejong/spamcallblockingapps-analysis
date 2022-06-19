.class public Lj0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc4/e;

.field public final synthetic b:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lj0/c;Lc4/e;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lj0/a;->a:Lc4/e;

    iput-object p3, p0, Lj0/a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/a;->a:Lc4/e;

    iget-object v1, p0, Lj0/a;->b:Landroid/graphics/Typeface;

    check-cast v0, Lf0/e$a;

    .line 2
    iget-object v0, v0, Lf0/e$a;->i:Le0/f$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Le0/f$c;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
