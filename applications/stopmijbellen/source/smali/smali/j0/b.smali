.class public Lj0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc4/e;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lj0/c;Lc4/e;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lj0/b;->a:Lc4/e;

    iput p3, p0, Lj0/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/b;->a:Lc4/e;

    iget v1, p0, Lj0/b;->b:I

    check-cast v0, Lf0/e$a;

    .line 2
    iget-object v0, v0, Lf0/e$a;->i:Le0/f$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Le0/f$c;->d(I)V

    :cond_0
    return-void
.end method
