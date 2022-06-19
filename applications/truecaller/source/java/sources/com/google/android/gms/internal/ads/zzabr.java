package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabr.class */
public final class zzabr {
    private static final String zzd = "zzabr";
    public final Context zza;
    private ExecutorService zze;
    private DexClassLoader zzf;
    private zzaax zzg;
    private byte[] zzh;
    private final boolean zzl;
    private zzaan zzo;
    private final Map<Pair<String, String>, zzacy> zzp;
    private zzabk zzr;
    private volatile AdvertisingIdClient zzi = null;
    private volatile boolean zzj = false;
    private Future zzk = null;
    private volatile zzyz zzm = null;
    private Future zzn = null;
    public boolean zzb = false;
    public boolean zzc = false;
    private boolean zzq = false;

    private zzabr(Context context) {
        boolean z = false;
        Context applicationContext = context.getApplicationContext();
        this.zzl = applicationContext != null ? true : z;
        context = applicationContext != null ? applicationContext : context;
        this.zza = context;
        this.zzp = new HashMap();
        if (this.zzr != null) {
            return;
        }
        this.zzr = new zzabk(context);
    }

    public static zzabr zzb(Context context, String str, String str2, boolean z) {
        zzaax zzaaxVar;
        byte[] zzb;
        zzabr zzabrVar = new zzabr(context);
        try {
            zzabrVar.zze = Executors.newCachedThreadPool(new zzabn());
            zzabrVar.zzj = z;
            if (z) {
                zzabrVar.zzk = zzabrVar.zze.submit(new zzabo(zzabrVar));
            }
            zzabrVar.zze.execute(new zzabq(zzabrVar));
            try {
                GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.f5675b;
                Context context2 = zzabrVar.zza;
                Objects.requireNonNull(googleApiAvailabilityLight);
                zzabrVar.zzb = GooglePlayServicesUtilLight.getApkVersion(context2) > 0;
                zzabrVar.zzc = googleApiAvailabilityLight.mo39063d(zzabrVar.zza) == 0;
            } catch (Throwable th) {
            }
            zzabrVar.zzs(0, true);
            if (zzabu.zzf() && ((Boolean) zzbet.zzc().zzc(zzbjl.zzbS)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            try {
                zzaaxVar = new zzaax(null);
                zzabrVar.zzg = zzaaxVar;
                try {
                    zzb = zzzo.zzb("NYpdto3gBV8HiZtFXi3NN2dSfPyfe2T+8tUnAUjRH8A=", false);
                } catch (IllegalArgumentException e) {
                    throw new zzaaw(zzaaxVar, e);
                }
            } catch (zzaaw e2) {
                throw new zzabi(e2);
            }
        } catch (zzabi e3) {
        }
        if (zzb.length == 32) {
            ByteBuffer wrap = ByteBuffer.wrap(zzb, 4, 16);
            byte[] bArr = new byte[16];
            wrap.get(bArr);
            for (int i = 0; i < 16; i++) {
                bArr[i] = (byte) (bArr[i] ^ 68);
            }
            zzabrVar.zzh = bArr;
            try {
                try {
                    try {
                        try {
                            File cacheDir = zzabrVar.zza.getCacheDir();
                            File file = cacheDir;
                            if (cacheDir == null) {
                                file = zzabrVar.zza.getDir("dex", 0);
                                if (file == null) {
                                    throw new zzabi();
                                }
                            }
                            File file2 = new File(String.format("%s/%s.jar", file, "1629828815138"));
                            if (!file2.exists()) {
                                byte[] zzb2 = zzabrVar.zzg.zzb(zzabrVar.zzh, "WB2QzkDZKOG650aS982ogXhn1Yxcva6GLSLeE6L6We2C3A3Rbz79IJNh+4R/H3BMQBhkxnKMPifOcr/OwWQnRZckNiZcRdmvzscGAhdRtk9bwYEAcr6EtX1q2MvdmwUP5j7rP5ZduN9Z71H86ac+ND6hJO5dRg8XcYTNT97oOtszggX+l8D23iMgPYFzDQ0coAvXnLxMf7CYG/Zw3EV+tvXTkt8vnqsPQmpMJ7C9U0egZ2NbUBOj4KoKougfRGE0GvbQ66/6yaMKRU5EJ+VZug0a5cqApMNPD50T3y5zffc2OUDtucPPOrfXQUABeF+MXmqlhA8qsJYLZJjYuJQfhE/U8bdDbolrAKTvd8wqmLuoNhxS3hJdMV9PF1PoDJMAnErATyerFSgrQGgMg/bipH86a8yyoGvOK28KVhdPvUeJPRJQPukYiFr7E5Uh7KvPOL4hNUNO0ksNjopG+21jdhlHS7pF+qWc+UtNFr1sD2xCSZfXZmP19lLlzT8Fk+ht/hpCsSzMbgP/BCiS8Qz32tPGYRY1zB35+85gcdsx+h/s6kCdtINWGG9C5E8HbQdHRRddhGNVFL69FFLT+LQeMXuYTwh/ASE7fUia62F5JG/tK3RlpJbhdDxBNSnvpqTlIR47WzcXhIx+OPXfxY71MFtkrkmxZIrt6daCA/FqfHbF9BWqRgYUVupnr3LkNPFuabFCC/ZezleNytCNt5N5XBtnMFmulVbxEVZP2NURgSsExUbpEq1NyOB9NJZEO+k0jiePZQuCbdIkIyI7D7giVv+2uDOPEqTifFA6F4SKmwQohhhAuWAWwnJk2O3/hePhncIPwEhwcxk2MycsshX2uEvwRwDmq7Ct1IHvXKuj6I2vY9Z8MH/S5alIA60Yep/UwItT/iLPhvKFMcxCMpXPA72lqja680v3KhVR7NJcpJ1zePF2xyS3FrPJ09xlBNuOPOxWQeLIgRep2eSDI7a4xsrbRu6m1M5ozxEa8tzslFqwrZsP6Mybsb8vabJIJCYWH4j0QntSZwez/8VOybAaQ7AAeIvpAXDOa2vPQB+1DKns7SuQlLwRRuPV0X6TgV5yl+jirNM8Bh4hS9Sv76+qoj4eHkzbAPU2tdiWRGbqEBiDK4MGlgSp7Lz11phgCQzUf1NHga5L90DGwZWRpUjafReESe1BZmQzBrT4saHYQlf6r8UUtvOuWoer0ZaZHpe/Vt8aP0B0cP1a4wTUOA98jUWvKDMAl+l2JpN5lFk1mSVwTEA5lnC+erapA2tOfQpSBN6l/rNZaie9M3hdlPDPnY7XgB+8DuSf6oBc/wCdHc8dkDyfx03l+R3IbUOcB2zsY/44c97LOIyd8OGLw7XmOdLhX++fgWxNXStPVyrsV3FHnET/vpmN9fSYhtwcgYqQNwTdFOcvKejFOvuCFkQmMujiC/L/O16e9m44so23gsERXPwyYo6/8UyIy4C1nP5l+tPJHeq6fg+ZNPBnGdLn6xd/eMbo5q3OrgsyQtj12igJpc8y8VZoDX548kiJ5FtSRBDkJLZDBK6vOUEzwnCaK7iaO23QgLZA0iV8gpIdt1t1z/DsPzm0VwKUduac9dyCekCCBIv4TpwKNwbozrm4Wps2Wc87W3t9+JV7MjCgWowV/kXjfr7sWVvJN8hCmHFmA3ZhXcFOjnjq8dM65lkoWEE5tcSmomYLJ1wIx6YolsRUlTZnROFqX9eaDCXB+UXLWwnZbdsKmuKHdM/a9EQ14BrNJkOxypy6Cd35bEe1rFEYDkpDHYpB4otq+xbatW2iWyyF24dZB+e/bYlFe95m6EbJR+6tGSJOOJ/bAkx2ynhxUp9wB5spvJjJH+Sih8/BAFYEu8HHNcL3rY+0M/2mj5S0L8FbGJPCMkVYsgW3McZNlkdGoZJKkZ79kx4iMBwHzEkCX8SYMCU/ni7JEuaYNCWrgLGmj1M1plmp7Rwg1fWPP6a5uiBwEm5rS5r/u7jQWGPGYAg/KUDcS2TYXptGx+HRtcR9iUeShXIy3ccsL2Fo7TafgOVOyeGK4YHutxYnCa7D5JwMktQPjOA+5+td8dUhk7XFFaXQ+M164Y4D4wUupu/YNFIf+kjXjVVEBKY8rGXEOvwexJ8/HScH6UXA3k2vMeiTWC0FbcSAlJG8K6FsCDJ+nlFPxic9nZFzHsfKZnojug0XYHphrV33eTCVZF1+CKSkbaEw62DEDVSwGIwEASVoJ6Xadi2uAtG67up55+Sw2QNdfS+Ms7VhGz8iP6Cg5LaHdUHE2a7wVU3AV/gGL7GE/PBzHeP9fzG4cnyGFmPodaSvrDHx3/8Rh2uO+hr3Rq0JZTuWNeRxYlWFQve6z3xqb7/48UuxB6qqL1w5yjmmFd+naoKOtBWQYDEh/cZz4B53MzzpisYvj34lvghem7U7nyssGSwhrog5BaviFmudkBbtE13GFZPlniS65CjxBKTOXxIRlxfmP41Tf1mKupQl6q2rdnOJdYISc7rquACDda7exaCFlvI0MX6i+T8hBzLjoBJQJ/qzMX7VgKKlBm3bBGaPL12e6bomEqsKtWCIWn5+2kGANDbCB2L7+quLo141P+Ak8f1CJcosJR0iiRV7LBHX6qaF3LYkbeepVZFVaKeywnv+OPFHabtU0L+FIL4eyeBNxVbTUKTW9m2w53YGDL5AUSg9zg8Wz+n0PaoaiNV7UfAr1Mk/roaHsGlA7R5pEZmjNZp12MC9oGWKDfUiVP1S+gVonh6D+/jNLJeK5a/XZcvAeRfVuTTOY+0hAZ5FuYMC6y+gjcBTaF6Gg4IPmyCvNKw+ZIWf+aLceFqt9PmiFrrErAmdOvaR+PjcCES1TsZqrbKd51tl4EZEbs8ZUkOtw7Eyqe52zLAuShksrICD7C4D2vtp4ggTscBC7pKGkFLeT5jDXUWBg3XxqPt5oKt/lX1Enew5M9hl7N0MFxOcj6ZhjKZS9w3wWE0yogPrpilB/fosKzFVii5PfhYBzTRmDAAPslqeM141OwB4vkvVpTNP6L2a/A5hpxjdefn+z456Q5cA0HocW3OKJWSmpHbZpWOl2T2RErP+yZw1hqfyA97gE14cxV6GjcanHxgY/Bi/Jm4qSTUbhmA/N1fA0W6wvuuMdVawDDAKEdddppSBx6QKEfDH0TNjSWQaX7UBaoAW2Yuq+3sG56I6MfTS3ypFyuE2XFShfwim2KeuV3TgvFOSIdQZPiktrYg9AYCgbr3p+iwBi0fPZ1O5B8UZsoyaahOArdu1q/7gmSCa2zQQzs9wOJp6r9R0wepKZKQmS0Ad7eGRwWgkY5wfArAOQDIpz7JGM5DmwBrH0QMDLCyWFTodUfEL9lWgPUaYz75g217HsNQEpQiyEZy5VtTlbyKNleVXIQbsKgv64ZUSZLfy8krL4CjYWPSc5cC13SDoBZlNH0ZI3tpDWis+xbFIOKcswjroAO6rlsVbwQbFGDNJsBXTScBdfPK+Oj9YWQ0ZKpIAftV2TtWC9RT7wrqB7h6gcVKxyTTfcjQy2HdWMzVAVP4Q9UWFS9TSZinlO3Nor5qvbE6axD1oH/7InwMjct2HINX+dSmYb4gDCnJ0EliDc50rOd4vxD1HSARf3ytKwQHQZpMuTP3LDizPr5y2hozMBEG3iBDdQTDx3k5ZoTujew2TX/0LD7zS2NEfk8AxPIsiUEqArsrnMlQ7dTRuAiOVqw4jxKUAb/y//kkAr5GU4MDNdibh5bq0XYWlsW+QF+mfYcNnWZGqfVbzNLfLb+vn2xLTUIzjqKduADw4CYNcGCpQoCN2jbzmzbaVbF6uyQOEu7LcY8L7fUDQcKzdkX7nB2k5ezqkmVQJJae7kheqy9ZERKYrn+LsLDx5771nWY0n+nBWiuoeiI+2M3zQ2/AqpRjSjlGXh3pR0KXZDI3wwlg55lfFBff2jLkLprbL/+5nO0KjCt1Wxo0vrqV7pU+jfVFv6GHSu+yqb+Chrt/vVPawYvR6vuwi5dQLqX4ldWNuVlCI2zpwrKR0pu97e4xeY3pPOU0hc96o8kTA0z8PnkfJ6kM0zLBVf7HTBoeXWGIx4tHCRCH+9ik0Hkjz6rWTM3Rpmk7DaQNityJacRjHWp2krrcFldLEO8fMeX1IyZ140dgRlA2aC+m3YQ02na8ZLgUu67unK2gAlN5OG3hzLMj1cENJdO35qP1cYrItcKS7xaQWcDBH+5qMJCXk+1IQ2C/m2HRjZGDBnAKTR5nFPmEtYn6e8l4O+9DJS6PZDszm7SsNZZVKv/k9A2Jr139a7ODslD8nM81LI+zcHMCofaIvkUsAlhyA9Wdl0DWEPQ5D9Ytb5wTGSbZGjuszlyHZi629WO2rV0c4XXjvn0v60VEPr+EsA2XXsUtsZhco/OcIiHZZzb8rkwQ7QD9zmSv/gRwNGj2uvzxtDUaoj0sBY8cow6zGK5oijZOI7+yGqZe1siGvJl3rRlFRCHZFmFYhclZF5w/di2fIQoXz2aeejD/Wdrb3CdppMkyK1xeQ1HKA2GBckUw39q8RDD3l/4IlZZ2LyhWztcFMDS/5Vk1ku2ifS4xQIsALCpb6AfcSucj0wny+m+KSRvkDbTTw7Vc2BBaUc0b+9qawwx2OndKB8ui8c2zTHXHtsm6Ey8rr/VhxQYvRBABI+W3c8Rsbu3NsFnn0jJ6GYw5rcL1hI6gbt74t59Tf5yr7dDBNZc2ZlR7Rfco4BRVVlnIKVy4msmYiQjfSL+D0/XUqee4+d+tYkYNCcLY4xFKvb8BL+kRWojeL3KP7hkQ/QrhUgAKYr+lGJO1KBC5eetZV38g0Rwgs1UL/ChoZsI3u4/WDP8Q6Sz8H6kdLVkN86ETU6G2kRP3kVJA2wcU8bYBsM0N1/7N25QvGCgoNPIzvSdNgmwPcJ/tBxKoQlIhabGUppsNo2+AnaNV4IcWz744wkw+7toKA886D3otLKISDbblrkWDARl05Fi9m/vMDCoqFhuVD2JD+9w4GydTLDBKWUI12C9hz5JNuZbVsk8mBYKWTZdYBEZHIlQyscLCz9a7tEIj/o5j9vbXbeWtsfbN9Nb4utHPbf4KYEB5hse4shChhGJn/JQ/nHTkPmSd/7Ez6wfk6836kYfxIG3zH0gdy7nugmgwOwtScJ8dnA91mfAxh8QKOox/zNbU0bpnZENfUkDtSf/NwhfZkk2zpjP6W8be39mUuy/MZCo6t4uR2TGhp0czWvcw5lhJnVkJ6p4TTHOhkMu8QRW3NV335TpIQqOMIyo69QXZSf96UaLAZDg15Tuy+pHdJ2m2+ouZ31xdkaykf5GpBmUaF1mVtEqLN22J5CJrOcOwUFfvOoRlbXKA9JU5N5sbrzwwPNFJmCDlm+5YTJJNF8z8yEtpPUh9hUTQ0ObsWknWhHrEd5V+P95zJwUqe1V1a8YvCxZomcZhIpuMtrzRsbdd5mtWxA0HrSLHlyJOS2u1XOfjSpjcFvBQKlCa4FUbPBVe9Hiu4WfUZAcHfLaNmQvz+BxTsTxFL6QUiWd0uBwlX+p1KZigwjr2FtuOQUkr5N7fmOz6fG71tbiGoahxjUZ2vUZYgqxeXJILtqnvHa2dFuFwNXyW494Ai8LIUZKTcIMLRm5BDzv7GyLzSsbFHVbaVleZ6LFOHZMSHqWofjxdDGUaH6lyxem2ILJMo6aVDUDhA65FQL6dqvUF4t4rP0/dmANo8a6mtOPtj7rtLd+SZj5v3edzZqr9g7As/QACDofvxwQYv5tlrmEO5g4PGMye4GOn6KI32uFBvzyosuvdMC4w18PM1JObaCJDT++BTqVKNvxhC0Y62Z9cuDTq0fXLk01LiNv7QSd9UE/U2sE35lzYeKG9beXnQ02KnUjE/Bd1gW9FEandG1vnJK0cmUxRhGf/w7ZXd0nG2zXfB693LyuLOXLwX1J0n4J9Ax+LTDKWQ3QnFobh9+iWKvBb9OmKr2P+bGHR/wDBIOaS/T15XTxn3egVLZZBswPSfi/JeFvz5JjFowTCcGwxvGSShv3wKo/kjTtLjLDs/ip8uMsfMISZl43ncl9mFzjxAsvp6HuM052XewuWpCCjaeF+3y3EFozkSQcKdv0qLHxgiy3D0reD/C6OXOd5egGfiMfZumV8PzZcYaKcnHHj6+r1clD0hwJ8UZNslsw/XJeT8eclvi3kGOt18r8XfYew+fg0KXxS6MCjqRB+0nkfGcScZa+TNUl0tyWpPT9MR6CxKSzXFWUg07xKAVHr+arYfdM2B4RzeLzmyvO6Db1kjVKzrz9NUJzwBptLgqMELv8TtIsXCpF4pXdU8EhEMt8mBc0q3ENGtRBYmm/D3wRsN4uo03MaBeT4WHzXZIHDsYKa7ZKSvrKftoVlFkWuXeBEZtGsbStZpt0x5ihoODLXTbnXeKri8UL9HEWujfZAYVfXgd7KGIZj5tdnux20H5RTuY4lAkr6OekjLiEwe+fMczsa8jVjT7Kgkg8qtj0e/6Ec6t0OvMBY68HGTwzx2trn17OpoyDoEdRsa3R3JMkHMRw93CuPc/cAdji78EYqQhPfntQ/FyL3JiPz9e+5eOWuvgX3h3jfc9fiqtIgbwhpwbXyP5TWUVkYOy4gAXYodxySrvQcGK6rtyOkEUtg+tohVPCw3dTdnDfYc1nF3qJooV9bs8oBnObW4k9YXuMfSEDtnGzs3CLxF1dDVzqCnMQjlQlfQPleG7gLCjhqHpkW7//41+1kQFwb3gPnMMsVkznW7bdhERl2PR66gMXXWY2Fc9hazr/0GWl2ZCnq0MkLwsudgIzh0sdTGL5sUK8jd570tTn5X0mqpthIZx91yRI1ZxyRoyEgNgsqFBC5RrrFGoXI97OJgRxSjrjUGAX3448A6pkRihFm/9O5uovIzQMROg5NSlyBP4LYuWzlEjaY0pFOYtsIo1+totMKLKsj9gTOD99RtapUqQ/+52qNYuAOBwZ+vC72K7UvT5CXdeSpZkw1TEfDsB/K4khwYddvezyWyACTsAErD5xSzZRX1t3i6hywAjqF9HEWmZIFBM9KQCl1OI+lbhGAQs9DKjARv6BEYwKGO5NmBYzqVbrXBGrLezx/trrkZEj9RO6B3+toKilDijqFA6rTXOFdQRpXfZRb6M+og+bvlLw8fJr9Pw3tmeWMqBRS3Q3zrguXjk/4BtVXrhth88K3li/91gonx5kCtMgcpQjdSiZZj3+r6ZI1NP43AVtX6i/4Up+OKwcuIzGO26/kFa1TvSa8Pai3M1wq2t1swkyd4H6jMtequFpS8KOztkfnhUvGoUj+HuOKwd2Dg5LlV8q6q5yEtmaPXSgOTM0P2/8NMjcqCl0SzgAzMRPx4jE0bq+7OePrrj3+zZ9CbD2mZURd8jRtwGy7YVC8aA2bNIJ9q9dhw7e/fWQpyrH6LpOMiYoK02WqHtkJmo/pZZv8e5WIz/OtRxiDnTj9J94KDsSTjj6/FEnQNgRJc9KY7bfR2XuKEGs80RtrLK4hHpQZk0PyoJDYc1G/4fz8HDBSZvgSFP6616N/+yINjcnY9wxZbSjVcba1kMtmA4VFlWm2T+Nduont2+aKPLnvm02yqTXdY2KsZbBt0fXizccWhIPlkdKPRJGkuzRq5Zy7kZbUcUYk+kWLQPCIX9ZkVloBg7gTLP4vjh/g7Exv+iU/ZRuQldTyF1D7pwK9ZETxMcuVhJK5m/jjDfL3EeIkAL0VX8sCDzul1IoPVxF87cT6XQ5Xz72ZGko0czoFlb6YpnM/WketAuH2WzbFwW9Kq+mxv4Djiequ5AFhtWrxGmX1J3nI20Fqm464XrmZjCKEKKpa1drgpCxuNjmGXgsiY41N0uRN3xnVUfaMMPyPnZsGTyizFUqOmWLjhY4I03U6JIQl9hHfuSNk9vN244c8ERsFQqNLBhcEaiyHswK97SEi9El0PMpAhRhTyifQN/hFxqQ7TL4uBEpir7pjc8Kf7/mljIPa571nQOdunnTIq3x/m/TnpdJ4qOB5N0YOaxaF4XNJ9PjvqhkSiHvcp6/8oJDXTGU4zxMzeVs64ocKNzGFSqO/ZZWnC549hRxtwkYM8Ts57n9qDr+nM3lHtUPVp6Yj22hY9vVMQn99wYT7g8c5iKoqFS2DF2R2+hNqMDDDtbZ89Wj9T+EL97S2Cjs+8DI4EY6hphyPzuQHCxMoL1GciA2KAOhH+ByaN6RBv9wdS6Y0zTauklCPXEW2hwjW1xwWaogQkoB7uRxb336cTTCbuVEJkirXzbCItTlwjxCLosKjqkP2643u2ea+8MoQNzEKaNaD7qbrC/UbCoNTPb02vnjaoE3SkAsJki2lSPlIqTmYECfrBJnkDaUTrcJcBHzH4xDGh04o98ofCmfmPU4OUAY5/nNaMdNreHPbm+Kf7gcTxxDZvY1vQl5lRaxY13y2313ndO56tBXOOKhvLP40q4Y211gbuDPpOcaBa+AWC1u53T9GNjGUG+tA7U8xoV5mT+zWUjwvLdUe5ZvY8RXFZamJqrhCodlhywqKp/VOHEE/YziNxh1QfSQAvKebG8KTD3o+QdSV6LMG/xnl7au70JmPaDNjoNENbG0VAdc1ze53u48j/tAw3cDPD+ZqL/Ae7xn9F28NweSYEC/KhYfQoxJOLC+UwBg3e8LMWQ89iO16nYt7JOWn4yAQmqzRK1e0xfCtegYBlwekNP6VI/Rzek/bPfy3DnEh43NezNH9oxrWm6t07jBx9msSXhIetrlugjMyt3x0St6jZI6VDIpfiauGhhf4D254+RF9/j/iXlhc5deWlYQOi+Ke/Zk0+Rm4A9if3OW7/8IbAfIa5mfDKqse+YzG80v9N1VfzlyAzBI7ZwYTxfAXyvQ0noDJn933m1Pe4EPi5eMcXs3WbFBGzhtLL14RT5w/XRdlNo+/VdAIuwxlPdgs5tDa/ZmaeHRagUQSQDhg+Fk4GPMGmK2TrdCCnS0Vp92XZk7Q8/x9aPyVwvVXuIoDB9nLR21iOihNhyTzwtbgid8u/GEDtOCEAPozqQLkB1l94M2YQsJPVjo/u+jo2F9DINcsg7GWEmJiDT0Zu9INxWtIWB8HQz8w0l7Os9zVnZ/PyQIfi50CvIkr+tq18Xw1yyEQsZ3pPfIiDsFSc6vWq7SuT/UzXQWTaO3E1XCpvZdoDjN/Pnhefo7uU56SrSHG3yHdxaL1m2f/aVZEI3u7tVxwZuzwywnaHOHHHiPkYM+ouN5jhL3WTGV7pLyNMb0QHmZ/o962Z00IIPhbnJyz9g1Wv/cYnqQgb13rjBscFY0noMl0ndVf0d1BPyXruU5fomBC7u9GdJT2rGq+LqIqOmCWJlDvSay2aNAaYK9BlDMEvZH5MGgQnPauM/01mCz6YheMKSHGzF8m1Qu12ZtmWIgMGkp8byyOgazsvPM02O2iR9/eOU+kOi9BCwtP3SJFT2vA8DEo2399acLCgHhv1A2qtAaBdvg0WxPd35t84df8mm95pY+Qc+F+3+65xIBCmQJGjID7arkX95IHGCThs1G29sKYl3vv/orHxO69PlB3Q0JpuHJsa69CbyX+xMFS60TUZTjWgiYFcGymd95EWknCqPnKCzsYBdKafTHsxBbYUCVcubgd8sXXFYzUAuPFWPDTJoPUQr/Cw6cb4YTIloeB6AOna4RtvLYAN35jggwRo33FKIRopUPuLhwHF8RCwEj60J7aLYdgZkVtFLyVtXwkebAbicZe3VrJvhC9dQPMiMRrl6pmxiZWRPXB9otLcPKf2ignVjlQdDj+dR2jX1MpWX6unLZj22YAcPvm1X850D+sCVhxY5Z6QvlptJrzDcTQy+lLyDRvR3653o5bVt4L2FOkU6TUydyWMo6XsdsDpKbEr1JT3G3uHYA19S2wKhLHnFenRP1AueZI2wIwhZkkQVXVfHXkk0zESwJ3j00XAOOIZ8RtV1L3Q/3ba4dhSMZejSvu+Cq5xpqkbhyydPNIvURGl6nrH+77JQnYPOhgsOU4h791eF/Z5pP2gmYmA8sy87udD7dHmnEUy/jTq7lMf0scUJxZRFKhzS2y2TWf0FIPWJtcT1Y57kTXDWhDOo6EqzEHEzYoCacbODoLoa5oR9UUEVE3TrpDD5ivhS9YsrUKfNi7vqZwQvDweQdAIGmdIBsmmM95LbQrwW+BmYvQTTeSmVF2UYTZXfwRnkD5orcFxcImrWmCAAk2ySV5OVca9GXeoaKk7sKqyQGp9jDhR4tcq561Dxkpps2cdiohojw4zhliErmyDaFvvQYGDiFe1AApkUGYncT3e0BtDKskfqn7+t+AN67K3ROPyEvjkMaANvvLJjWvkpbkrY993PZqFF+ocDXQHHswhGZ5AutXgYXlCjeoYhtHec3iown4WQINEzDcup4Mgze2b+sQZO/T+Z24P4Pv5Dh0covInux79zEW+c5pqUZ4IXOiau6TDN8LPEZWICiLSE5F6JGrZ0NbFqYcuphX9VVd4P2elflJqqI5fN/EOknaPd7UFUG0NRE0GiPIVt6Kq5zG8FJZIYxHEFnHbqauGXZAVFVpoWNMIUcH8edKtOXhkpQtSbtXit2ykBVXy7uB8aMzvyrMkFQ5gQgcs+y9fnWcwdbeZgL2+sw+ew/uRlhA2Ct1Z8Evwx2E3WXavwFnzITtFYTsG5ag3/yNUKPQGd+CnH2D2ElMmVBGoLgqTiNWjh7HfKyg08pvJXeNvVFzzA/n+wzh3KpBy18Z8WxS2c7cIliL/Zd7nJeO2a3o7UE9owG+SgEk07ebS/bynEy8AFtBXs/Snxz0Si45+3YE0Ez/wQWvAqEZsF423cNrnzpZymoVfZBRHnLTbJG/Ud0FV3TsYcuVX0w7dHcNID9xFPqOR6Pgr40DGEDSzZsXvsRtTIKG0lKwB/AggBIy8rXbHZq/fMspu7kjq6KC4Xf7c9uEMPN2rvTQPK4K7OlVUcWbEpycMEJL8tnPj3PA3taqkeeOP47lC17UDl/Lni8eC3WequURj/V1Al2K6NLkybIQskeVLTyu+WNJcqEzfditZ4Mg68krfy5cmUjgKrrQbuSrpLAp/LGQ1ukIVjzAYFab1NW8DfV6vvhJW6ksN3tAGdiwIFeeuklwh7+q2svfjr0XCbVEGUPwkijfXxeQ2nPrmk+35fAIdQY5BO+jy5QPblw2cNO1aYKTBAOUmzLsgtPB5n4M6lQV8OPdHhzTgW2DeFqyaTRk4t0oK4x5aFJTw7yL6IlDGq0kagI/IqNqKUNc3iI/JG+WOTYym3kcjbMdfEjG+IivkpMCbWZxc3icS6LWfuG+SK8rRTaJoWw3Etb1SrlNsrYalJsQqMMyJx5oTfRZPbe2yWw7quvDbnVU4Q0FhY+aXQCrTHCE+4Kg/+xtRNrVJ1cmhHD2gqbYqSUMQag1iwaW634RF4CM/jPAIPIFCmccH+FsHq+rtXTieaKNNA4S3HYj+HxgweuzFYaslOgfWXts0WXa6qUuwxCcypN8xA+HmWM2v+6ka3Rh+26xSX90LyxiDkqly8eIpzFQiwHIy+mDQJaGAjcyogI+G5eolsFmPoGALXTjkJ9gGoMuExPPxoM3Ttdo61hBzM4YifZZA5DRLzS52zt5+jz6sJzPYm8BC2OjwiUhBPMZ+C+ZUhPTqghu8WAJD3VdyovzKwPi2loN7zNUF9M977fHobtIGNubIzF5tNAqvsDJ+LjnoxErLYmgaynBPonlD21hauHPMY5iVKu8RUaDEBViEyP/3KGKo8NKmbxulLqtMSSVCGQfeYlKu5Bu+D5Rn1hLnggGTJsd58EteF1N1JqLLdiSG4yNr127raStwG4NVuVE+ztPMRGZXkOoZNyJ0NHMGW9e7uQAqtFj/Me8nNZn9waWazLuwX2u5c3L8mIZMxHSvlHDQtJmGS5YphW7ds0lWL9e35e8SLXJ48aXCbl2dEVL0vx+cGYLO8L2m/iJ/gaX/7hvQC0h/1rOviPjuKhRY5gsyCZDGjNY//BNB2lyZWL6boa/+hBp2cu1pjWB4ibLu5BSCcrJ0fwDInVyCX4korKoXF/EtYmjEF+fBK6wuyM5pW7GHGgvpFcelRRErHhh29qRlDuMEEYEWKvrqUsfi+7aDScCoImmBjQ029ZBXypKe3xMzDEmVRS+u7QCYlGvgI/idYhaLIuP+DmwbKBi35SLbRXZg7d+Nz/pP36PHge+zMAP/c7TIoNvONU8Zh/aO4ZjH/W5x3IDRHZLvNcj5wIJPAk1Vl4XS92owsPBkLeyBLOiU+fSPdwqlYzYuz1Mwt9fag4Be82BXKf6l/K1mN/yzjFpU8FfsFhjZqWM7tp+BEHwvWP6HkFxbQZ+KiNkAtFWoK+QEDqx7335yc/+lP8KZaBFU0Q8I1hjhbwvZ6OeezpcZ4OH3srX0STpprPrkfWHk4oq0EvSNxE4WlfLu3+s8XGpl3cBxwEyLWHh5MlPucwgi7wLkD2krptwXGpaddHkMm4noyFHXQE1CdD4qAeFrtxgLgDZ4hriPa8ZAu6mwIcTK2ZsgKAKSUju/TqKC3FbV/A==");
                                file2.createNewFile();
                                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                                fileOutputStream.write(zzb2, 0, zzb2.length);
                                fileOutputStream.close();
                            }
                            zzabrVar.zzw(file, "1629828815138");
                            try {
                                zzabrVar.zzf = new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, zzabrVar.zza.getClassLoader());
                                zzy(file2);
                                zzabrVar.zzv(file, "1629828815138");
                                zzz(String.format("%s/%s.dex", file, "1629828815138"));
                                zzabrVar.zzo = new zzaan(zzabrVar);
                                zzabrVar.zzq = true;
                                return zzabrVar;
                            } catch (Throwable th2) {
                                zzy(file2);
                                zzabrVar.zzv(file, "1629828815138");
                                zzz(String.format("%s/%s.dex", file, "1629828815138"));
                                throw th2;
                            }
                        } catch (zzaaw e4) {
                            throw new zzabi(e4);
                        }
                    } catch (IOException e5) {
                        throw new zzabi(e5);
                    }
                } catch (FileNotFoundException e6) {
                    throw new zzabi(e6);
                }
            } catch (NullPointerException e7) {
                throw new zzabi(e7);
            }
        }
        throw new zzaaw(zzaaxVar);
    }

    private final void zzv(File file, String str) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, "1629828815138"));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, "1629828815138"));
        if (!file3.exists()) {
            return;
        }
        long length = file3.length();
        if (length <= 0) {
            return;
        }
        byte[] bArr = new byte[(int) length];
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file3);
            try {
                if (fileInputStream.read(bArr) <= 0) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e) {
                    }
                    zzy(file3);
                    return;
                }
                System.out.print("test");
                System.out.print("test");
                System.out.print("test");
                zzzc zzg = zzzd.zzg();
                zzg.zzd(zzgex.zzt(Build.VERSION.SDK.getBytes()));
                zzg.zzc(zzgex.zzt("1629828815138".getBytes()));
                byte[] bytes = this.zzg.zza(this.zzh, bArr).getBytes();
                zzg.zza(zzgex.zzt(bytes));
                zzg.zzb(zzgex.zzt(zzzs.zze(bytes)));
                file2.createNewFile();
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] zzao = zzg.zzah().zzao();
                    fileOutputStream.write(zzao, 0, zzao.length);
                    fileOutputStream.close();
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                    }
                    try {
                        fileOutputStream.close();
                    } catch (IOException e3) {
                    }
                    zzy(file3);
                } catch (zzaaw | IOException | NoSuchAlgorithmException e4) {
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e5) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                    zzy(file3);
                } catch (Throwable th2) {
                    fileOutputStream2 = fileOutputStream;
                    th = th2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e7) {
                        }
                    }
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e8) {
                        }
                    }
                    zzy(file3);
                    throw th;
                }
            } catch (zzaaw | IOException | NoSuchAlgorithmException e9) {
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = null;
            }
        } catch (zzaaw | IOException | NoSuchAlgorithmException e10) {
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = null;
            fileInputStream = null;
        }
    }

    private final boolean zzw(File file, String str) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream2;
        FileOutputStream fileOutputStream2;
        Throwable th;
        File file2 = new File(String.format("%s/%s.tmp", file, "1629828815138"));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, "1629828815138"));
        if (file3.exists()) {
            return false;
        }
        try {
            long length = file2.length();
            if (length <= 0) {
                zzy(file2);
                return false;
            }
            byte[] bArr = new byte[(int) length];
            fileInputStream2 = new FileInputStream(file2);
            try {
                try {
                    if (fileInputStream2.read(bArr) <= 0) {
                        zzy(file2);
                        try {
                            fileInputStream2.close();
                            return false;
                        } catch (IOException e) {
                            return false;
                        }
                    }
                    try {
                        zzzd zzf = zzzd.zzf(bArr, zzgfm.zza());
                        if ("1629828815138".equals(new String(zzf.zzd().zzz())) && Arrays.equals(zzf.zzc().zzz(), zzzs.zze(zzf.zza().zzz())) && Arrays.equals(zzf.zze().zzz(), Build.VERSION.SDK.getBytes())) {
                            byte[] zzb = this.zzg.zzb(this.zzh, new String(zzf.zza().zzz()));
                            file3.createNewFile();
                            fileOutputStream = new FileOutputStream(file3);
                            try {
                                fileOutputStream.write(zzb, 0, zzb.length);
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e2) {
                                }
                                try {
                                    fileOutputStream.close();
                                    return true;
                                } catch (IOException e3) {
                                    return true;
                                }
                            } catch (zzaaw | IOException | NoSuchAlgorithmException e4) {
                                fileInputStream = fileInputStream2;
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e5) {
                                    }
                                }
                                if (fileOutputStream == null) {
                                    return false;
                                }
                                try {
                                    fileOutputStream.close();
                                    return false;
                                } catch (IOException e6) {
                                    return false;
                                }
                            } catch (Throwable th2) {
                                fileOutputStream2 = fileOutputStream;
                                th = th2;
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e7) {
                                    }
                                }
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e8) {
                                    }
                                }
                                throw th;
                            }
                        }
                        zzy(file2);
                        try {
                            fileInputStream2.close();
                            return false;
                        } catch (IOException e9) {
                            return false;
                        }
                    } catch (NullPointerException e10) {
                        try {
                            fileInputStream2.close();
                            return false;
                        } catch (IOException e11) {
                            return false;
                        }
                    }
                } catch (zzaaw | IOException | NoSuchAlgorithmException e12) {
                    fileOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = null;
            }
        } catch (zzaaw | IOException | NoSuchAlgorithmException e13) {
            fileInputStream = null;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream2 = null;
            fileOutputStream2 = null;
        }
    }

    public final void zzx() {
        try {
            if (this.zzi != null || !this.zzl) {
                return;
            }
            AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.zza);
            advertisingIdClient.start();
            this.zzi = advertisingIdClient;
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            this.zzi = null;
        }
    }

    private static final void zzy(File file) {
        if (!file.exists()) {
            String.format("File %s not found. No need for deletion", file.getAbsolutePath());
        } else {
            file.delete();
        }
    }

    private static final void zzz(String str) {
        zzy(new File(str));
    }

    public final Context zzc() {
        return this.zza;
    }

    public final boolean zzd() {
        return this.zzq;
    }

    public final ExecutorService zze() {
        return this.zze;
    }

    public final DexClassLoader zzf() {
        return this.zzf;
    }

    public final zzaax zzg() {
        return this.zzg;
    }

    public final byte[] zzh() {
        return this.zzh;
    }

    public final boolean zzi() {
        return this.zzb;
    }

    public final zzaan zzj() {
        return this.zzo;
    }

    public final boolean zzk() {
        return this.zzc;
    }

    public final boolean zzl() {
        return this.zzr.zza();
    }

    public final zzabk zzm() {
        return this.zzr;
    }

    public final zzyz zzn() {
        return this.zzm;
    }

    public final Future zzo() {
        return this.zzn;
    }

    public final boolean zzp(String str, String str2, Class<?>... clsArr) {
        if (!this.zzp.containsKey(new Pair(str, str2))) {
            this.zzp.put(new Pair<>(str, str2), new zzacy(this, str, str2, clsArr));
            return true;
        }
        return false;
    }

    public final Method zzq(String str, String str2) {
        zzacy zzacyVar = this.zzp.get(new Pair(str, str2));
        if (zzacyVar == null) {
            return null;
        }
        return zzacyVar.zzb();
    }

    public final void zzs(int i, boolean z) {
        if (this.zzc) {
            Future<?> submit = this.zze.submit(new zzabp(this, i, true));
            if (i != 0) {
                return;
            }
            this.zzn = submit;
        }
    }

    public final AdvertisingIdClient zzt() {
        if (!this.zzj) {
            return null;
        }
        if (this.zzi != null) {
            return this.zzi;
        }
        Future future = this.zzk;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.zzk = null;
            } catch (InterruptedException | ExecutionException e) {
            } catch (TimeoutException e2) {
                this.zzk.cancel(true);
            }
        }
        return this.zzi;
    }

    public final int zzu() {
        if (this.zzo != null) {
            return zzaan.zzd();
        }
        return Integer.MIN_VALUE;
    }
}
