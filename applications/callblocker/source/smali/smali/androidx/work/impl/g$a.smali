.class public Landroidx/work/impl/g$a;
.super Landroidx/room/a/a;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p2, p3}, Landroidx/room/a/a;-><init>(II)V

    .line 134
    iput-object p1, p0, Landroidx/work/impl/g$a;->c:Landroid/content/Context;

    .line 135
    return-void
.end method


# virtual methods
.method public a(Landroidx/i/a/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    iget v0, p0, Landroidx/work/impl/g$a;->b:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 140
    const-string/jumbo v0, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "reschedule_needed"

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Landroidx/i/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/g$a;->c:Landroid/content/Context;

    const-string/jumbo v1, "androidx.work.util.preferences"

    .line 143
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "reschedule_needed"

    .line 148
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
