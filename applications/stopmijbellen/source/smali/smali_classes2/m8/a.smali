.class public final synthetic Lm8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/g$c;


# instance fields
.field public final synthetic a:Lm8/d;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lm8/d;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm8/a;->a:Lm8/d;

    iput p2, p0, Lm8/a;->b:I

    iput-boolean p3, p0, Lm8/a;->c:Z

    iput-boolean p4, p0, Lm8/a;->d:Z

    return-void
.end method


# virtual methods
.method public final g(Le2/g;Le2/b;)V
    .locals 2

    iget-object p1, p0, Lm8/a;->a:Lm8/d;

    iget p2, p0, Lm8/a;->b:I

    iget-boolean v0, p0, Lm8/a;->c:Z

    iget-boolean v1, p0, Lm8/a;->d:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lm8/d;->f()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1, v1}, Lm8/d;->h(Z)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1, v0}, Lm8/d;->g(Z)V

    :goto_0
    return-void
.end method
