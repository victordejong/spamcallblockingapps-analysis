.class public Ld2/h3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h3;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/h3;


# direct methods
.method public constructor <init>(Ld2/h3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h3$d;->a:Ld2/h3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/h3$d;->a:Ld2/h3;

    new-instance v1, Ld2/h3$d$a;

    invoke-direct {v1, p0, p1}, Ld2/h3$d$a;-><init>(Ld2/h3$d;Ld2/t0;)V

    invoke-static {v0, v1}, Ld2/h3;->c(Ld2/h3;Ljava/lang/Runnable;)V

    return-void
.end method
