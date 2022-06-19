.class public final synthetic Lm8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# instance fields
.field public final synthetic a:Lm8/d;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lm8/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm8/c;->a:Lm8/d;

    iput-boolean p2, p0, Lm8/c;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lm8/c;->a:Lm8/d;

    iget-boolean v0, p0, Lm8/c;->b:Z

    check-cast p2, Ls6/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Lm8/d;->j(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v2, v0, v1}, Lm8/d;->i(IZZ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v2, v0, v1}, Lm8/d;->i(IZZ)V

    :goto_0
    return-void
.end method
