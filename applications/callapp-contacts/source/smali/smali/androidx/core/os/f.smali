.class final Landroidx/core/os/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/e;


# instance fields
.field private final a:Landroid/os/LocaleList;


# direct methods
.method constructor <init>(Landroid/os/LocaleList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/core/os/f;->a:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Landroidx/core/os/f;->a:Landroid/os/LocaleList;

    return-object v0
.end method

.method public final a(I)Ljava/util/Locale;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/core/os/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/core/os/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/core/os/f;->a:Landroid/os/LocaleList;

    check-cast p1, Landroidx/core/os/e;

    invoke-interface {p1}, Landroidx/core/os/e;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/core/os/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/core/os/f;->a:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
