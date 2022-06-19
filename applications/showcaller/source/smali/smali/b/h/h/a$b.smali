.class Lb/h/h/a$b;
.super Ljava/lang/Object;
.source "CallbackWithHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/h/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lb/h/h/f$c;

.field final synthetic e:I

.field final synthetic f:Lb/h/h/a;


# direct methods
.method constructor <init>(Lb/h/h/a;Lb/h/h/f$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/h/h/a$b;->f:Lb/h/h/a;

    iput-object p2, p0, Lb/h/h/a$b;->d:Lb/h/h/f$c;

    iput p3, p0, Lb/h/h/a$b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/h/h/a$b;->d:Lb/h/h/f$c;

    iget v1, p0, Lb/h/h/a$b;->e:I

    invoke-virtual {v0, v1}, Lb/h/h/f$c;->a(I)V

    return-void
.end method
