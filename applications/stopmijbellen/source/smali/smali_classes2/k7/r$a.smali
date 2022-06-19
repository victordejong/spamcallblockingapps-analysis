.class public Lk7/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/r;->o(Lk7/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk7/r;


# direct methods
.method public constructor <init>(Lk7/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/r$a;->a:Lk7/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/r$a;->a:Lk7/r;

    invoke-virtual {v0, p1}, Lk7/n;->n(Ljava/lang/Exception;)V

    return-void
.end method
