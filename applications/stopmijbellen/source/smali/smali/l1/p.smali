.class public Ll1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls6/o;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ll1/p;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/widget/l;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ll1/p;->a:Ljava/lang/Object;

    return-void
.end method
