.class Lb/h/h/a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"


# instance fields
.field private final a:Lb/h/h/f$c;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lb/h/h/f$c;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/h/h/a;->a:Lb/h/h/f$c;

    .line 3
    iput-object p2, p0, Lb/h/h/a;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/h/h/a;->a:Lb/h/h/f$c;

    .line 2
    iget-object v1, p0, Lb/h/h/a;->b:Landroid/os/Handler;

    new-instance v2, Lb/h/h/a$b;

    invoke-direct {v2, p0, v0, p1}, Lb/h/h/a$b;-><init>(Lb/h/h/a;Lb/h/h/f$c;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/h/h/a;->a:Lb/h/h/f$c;

    .line 2
    iget-object v1, p0, Lb/h/h/a;->b:Landroid/os/Handler;

    new-instance v2, Lb/h/h/a$a;

    invoke-direct {v2, p0, v0, p1}, Lb/h/h/a$a;-><init>(Lb/h/h/a;Lb/h/h/f$c;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method b(Lb/h/h/e$e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lb/h/h/e$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lb/h/h/e$e;->a:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lb/h/h/a;->c(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p1, Lb/h/h/e$e;->b:I

    invoke-direct {p0, p1}, Lb/h/h/a;->a(I)V

    :goto_0
    return-void
.end method
