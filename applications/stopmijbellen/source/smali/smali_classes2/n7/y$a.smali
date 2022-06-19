.class public Ln7/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/y;->b(Ln7/g$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll7/a;

.field public final synthetic b:Lk7/k;


# direct methods
.method public constructor <init>(Ln7/y;Ll7/a;Lk7/k;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln7/y$a;->a:Ll7/a;

    iput-object p3, p0, Ln7/y$a;->b:Lk7/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/y$a;->a:Ll7/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    .line 3
    :cond_0
    iget-object p1, p0, Ln7/y$a;->b:Lk7/k;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lk7/k;->b:Z

    .line 5
    invoke-virtual {p1}, Lk7/k;->c()V

    .line 6
    iget-object p1, p0, Ln7/y$a;->b:Lk7/k;

    .line 7
    iput v0, p1, Lk7/k;->e:I

    :cond_1
    return-void
.end method
