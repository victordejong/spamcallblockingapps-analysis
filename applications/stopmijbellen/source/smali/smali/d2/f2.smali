.class public Ld2/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/g2;


# direct methods
.method public constructor <init>(Ld2/g2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f2;->a:Ld2/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld2/f2;->a:Ld2/g2;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
