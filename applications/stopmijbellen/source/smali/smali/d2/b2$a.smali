.class public Ld2/b2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/b2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/b2;


# direct methods
.method public constructor <init>(Ld2/b2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b2$a;->a:Ld2/b2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 1

    .line 1
    new-instance v0, Ld2/b2$a$a;

    invoke-direct {v0, p0, p1}, Ld2/b2$a$a;-><init>(Ld2/b2$a;Ld2/t0;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    return-void
.end method
