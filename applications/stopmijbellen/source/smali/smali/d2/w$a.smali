.class public Ld2/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/w;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/w;


# direct methods
.method public constructor <init>(Ld2/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/w$a;->a:Ld2/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/w$a;->a:Ld2/w;

    invoke-virtual {v0, p1}, Ld2/w;->c(Ld2/t0;)V

    return-void
.end method
