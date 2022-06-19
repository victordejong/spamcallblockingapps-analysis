.class public Ln7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# instance fields
.field public final synthetic a:Ln7/j;


# direct methods
.method public constructor <init>(Ln7/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/i;->a:Ln7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/i;->a:Ln7/j;

    invoke-virtual {v0, p1}, Ln7/j;->p(Ljava/lang/Exception;)V

    return-void
.end method
