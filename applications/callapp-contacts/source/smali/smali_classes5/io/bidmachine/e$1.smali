.class final Lio/bidmachine/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/e;


# direct methods
.method constructor <init>(Lio/bidmachine/e;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lio/bidmachine/e$1;->this$0:Lio/bidmachine/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "IABConsent_SubjectToGDPR"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "IABTCF_TCString"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "IABConsent_ConsentString"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "IABUSPrivacy_String"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "IABTCF_gdprApplies"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 47
    :pswitch_0
    iget-object p2, p0, Lio/bidmachine/e$1;->this$0:Lio/bidmachine/e;

    invoke-static {p2, p1}, Lio/bidmachine/e;->access$100(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V

    return-void

    .line 53
    :pswitch_1
    iget-object p2, p0, Lio/bidmachine/e$1;->this$0:Lio/bidmachine/e;

    invoke-static {p2, p1}, Lio/bidmachine/e;->access$300(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V

    return-void

    .line 44
    :pswitch_2
    iget-object p2, p0, Lio/bidmachine/e$1;->this$0:Lio/bidmachine/e;

    invoke-static {p2, p1}, Lio/bidmachine/e;->access$000(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V

    return-void

    .line 50
    :pswitch_3
    iget-object p2, p0, Lio/bidmachine/e$1;->this$0:Lio/bidmachine/e;

    invoke-static {p2, p1}, Lio/bidmachine/e;->access$200(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V

    return-void

    .line 56
    :pswitch_4
    iget-object p2, p0, Lio/bidmachine/e$1;->this$0:Lio/bidmachine/e;

    invoke-static {p2, p1}, Lio/bidmachine/e;->access$400(Lio/bidmachine/e;Landroid/content/SharedPreferences;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4fc43fb -> :sswitch_4
        0x2c500d30 -> :sswitch_3
        0x39c4b13c -> :sswitch_2
        0x48a6de12 -> :sswitch_1
        0x497ef957 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
