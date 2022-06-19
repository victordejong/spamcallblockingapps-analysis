.class public Ll1/l$a;
.super Ll1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/l;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll1/g;


# direct methods
.method public constructor <init>(Ll1/l;Ll1/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ll1/l$a;->a:Ll1/g;

    invoke-direct {p0}, Ll1/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ll1/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll1/l$a;->a:Ll1/g;

    invoke-virtual {v0}, Ll1/g;->y()V

    .line 2
    invoke-virtual {p1, p0}, Ll1/g;->v(Ll1/g$d;)Ll1/g;

    return-void
.end method
