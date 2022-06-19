.class public Lu8/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/b$c;->a:Lu8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Ld9/h;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lu8/b$c;->a:Lu8/b;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
