.class public final Lk7/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# instance fields
.field public a:Z

.field public final synthetic b:Ll7/a;


# direct methods
.method public constructor <init>(Ll7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/x;->b:Ll7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk7/x;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk7/x;->a:Z

    .line 3
    iget-object v0, p0, Lk7/x;->b:Ll7/a;

    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    return-void
.end method
