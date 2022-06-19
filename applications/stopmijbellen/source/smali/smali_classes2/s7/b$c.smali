.class public Ls7/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/b;->a(Lk7/m;)Lm7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm7/g;

.field public final synthetic b:Lk7/l;


# direct methods
.method public constructor <init>(Ls7/b;Lm7/g;Lk7/l;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ls7/b$c;->a:Lm7/g;

    iput-object p3, p0, Ls7/b$c;->b:Lk7/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Ls7/b$c;->a:Lm7/g;

    .line 2
    invoke-virtual {v1, p1, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p0, Ls7/b$c;->a:Lm7/g;

    iget-object v1, p0, Ls7/b$c;->b:Lk7/l;

    invoke-virtual {p1, v1}, Lm7/g;->q(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object v1, p0, Ls7/b$c;->a:Lm7/g;

    .line 5
    invoke-virtual {v1, p1, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    :goto_0
    return-void
.end method
