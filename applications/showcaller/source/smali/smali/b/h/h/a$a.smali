.class Lb/h/h/a$a;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/h/a;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lb/h/h/f$c;

.field final synthetic e:Landroid/graphics/Typeface;

.field final synthetic f:Lb/h/h/a;


# direct methods
.method constructor <init>(Lb/h/h/a;Lb/h/h/f$c;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/h/h/a$a;->f:Lb/h/h/a;

    iput-object p2, p0, Lb/h/h/a$a;->d:Lb/h/h/f$c;

    iput-object p3, p0, Lb/h/h/a$a;->e:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/h/h/a$a;->d:Lb/h/h/f$c;

    iget-object v1, p0, Lb/h/h/a$a;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lb/h/h/f$c;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
