.class public final Ln7/z$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/z$a;->p(Lk7/h;Ljava/lang/Exception;)Ln7/z$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/z$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ln7/z$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/z$a$a;->a:Ln7/z$a;

    iput-object p2, p0, Ln7/z$a$a;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln7/z$a$a;->a:Ln7/z$a;

    iget-object v1, p0, Ln7/z$a$a;->b:Ljava/lang/Exception;

    .line 2
    invoke-virtual {v0, v1}, Lk7/n;->n(Ljava/lang/Exception;)V

    return-void
.end method
